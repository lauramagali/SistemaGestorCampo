using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using SERVICIOS.DB;

namespace DAL
{
    public class EventDAL : AbstractDAL
    {
        private AditionalServicesDAL aditionalServiceDAL = AditionalServicesDAL.Instance;
        private static readonly EventDAL instance = new EventDAL();
        private PaymentDAL paymentDAL = PaymentDAL.Instance;

        private EventDAL()
        {

        }

        public static EventDAL Instance => instance;

        public Event SaveEvent(Event evt)
        {
            using (var con = this.GetSqlConnectionOpen())
            {
                var db = new Database(con);

                if (evt.Id != null)
                {
                    db.AddInOutParameter("@Id", evt.Id, System.Data.SqlDbType.Int);
                }
                else
                {
                    db.AddOutParameter("@Id", System.Data.SqlDbType.Int);
                }

                db.AddParameter("@Title", evt.Title);
                db.AddParameter("@Guess", evt.GuessQuantity);
                db.AddParameter("@EventType", evt.EventType.ToString());
                db.AddParameter("@Price", evt.Price);
                db.AddParameter("@MinPrice", evt.MinPrice);
                db.AddParameter("@CustomerId", evt.Customer.Id);
                db.AddParameter("@Status", evt.Status.ToString());
                db.AddParameter("@DateFrom", evt.DateFrom);
                db.ExecuteNonQuery("sp_Event_Upsert", true);

                evt.Id = db.ReadOutputParameter<Int32>("@Id");

                if (evt.AditionalServices != null)
                {
                    foreach (var aditionalService in evt.AditionalServices)
                    {
                        aditionalService.EventId = (int)evt.Id;
                        aditionalServiceDAL.SaveAditionalService(aditionalService, con);
                    }
                }

            }

            return evt;
        }


        public IList<Event> FindEvents(Int32? eventId//,
            //Int32? customerId,
           // DateTime? from
            )
        {
            var sql = "SELECT * FROM EVENTS WHERE 1=1 ";

            using (var con = this.GetSqlConnectionOpen())
            {
                var db = new Database(con);

                if (eventId != null && eventId > 0)
                {
                    sql = sql + " AND ID = @Id";
                    db.AddParameter("@Id", eventId);
                }
                //if (customerId != null && customerId > 0)
                //{
                //    sql = sql + " AND evt.CustomerId = @CustomerId";
                //    db.AddParameter("@CustomerId", customerId);
                //}
               
                //if (from != null)
                //{
                //    sql = sql + " AND DateFrom > @DateFrom";
                //    db.AddParameter("@DateFrom", from);
                //}

                var events = db.ExecuteQuery<Event>(sql);

                return events;
            }

        }
        public IList<Event> FindEventByDate(DateTime? from)
        {
            var sql = "SELECT * FROM EVENTS WHERE 1=1 ";

            using (var con = this.GetSqlConnectionOpen())
            {
                var db = new Database(con);

                if (from != null)
                {
                    sql = sql + " AND DateFrom > @DateFrom";
                    db.AddParameter("@DateFrom", from);
                }

                var events = db.ExecuteQuery<Event>(sql);

                return events;
            }

        }

        

        public Event LoadFullEvent(Event evt)
        {
            using (var con = this.GetSqlConnectionOpen())
            {
                var db = new Database(con);
                db.AddParameter("@Id", evt.Id);

                var dbCustomer = new Database(con).AddParameter("@Id", evt.Id);
                var customers = dbCustomer.ExecuteQuery<Customer>("SELECT cx.* FROM [Customers] cx INNER JOIN EVENTS evt ON evt.CustomerId = cx.Id where evt.Id = @Id");

                if (customers.Count > 0)
                {
                    evt.Customer = customers[0];
                }

                
                var dbAditionalServices = new Database(con).AddParameter("@Id", evt.Id);
                var aditionalServices = dbAditionalServices.ExecuteQuery<AditionalService>("SELECT aserv.* FROM [AditionalServices] aserv inner join events evt on evt.Id = aserv.EventId where evt.Id = @Id;");

                if (aditionalServices.Count > 0)
                {
                    foreach (var aserv in aditionalServices)
                    {
                        aserv.Service = aditionalServiceDAL.FindServiceById(aserv.ServiceId, con);
                        evt.AditionalServices.Add(aserv);
                    }
                }

                return evt;
            }
        }

        
       
        

        
    }
}
