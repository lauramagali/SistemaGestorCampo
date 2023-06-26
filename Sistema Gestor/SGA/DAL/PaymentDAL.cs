using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using SERVICIOS.DB;
using BE;

namespace DAL
{
    public class PaymentDAL : AbstractDAL
    {
        #region singleton
        private static readonly PaymentDAL instance = new PaymentDAL();

        private PaymentDAL()
        {

        }

        public static PaymentDAL Instance => instance;

        #endregion

        public void SavePayment(Payment payment, User user)
        {
            using (var con = this.GetSqlConnectionOpen())
            {
                Database db = new Database(con);
                db.AddInOutParameter("@Id", payment.Id, System.Data.SqlDbType.Int);
                db.AddParameter("@EventId", payment.EventId);
                db.AddParameter("@Type", payment.Type.ToString());
                db.AddParameter("@Amount", payment.Amount);
                db.AddParameter("@PaymentDate", payment.PaymentDate);
                db.AddParameter("@ConciliationKey", payment.ConciliationKey);
                db.AddParameter("@Status", payment.Status);
                db.AddParameter("@UserId", user.Id);

                db.ExecuteNonQuery("sp_Payment_Upsert", true);

                payment.Id = db.ReadOutputParameter<Int32>("@Id");

            }
        }

        internal IList<Payment> FindActivePaymentsByEventId(int? eventId, SqlConnection con)
        {
            var db = new Database(con);
            db.AddParameter("@EventId", eventId);

            return db.ExecuteQuery<Payment>("SELECT * FROM [Payments] where EventId = @EventId AND Status = 1");

        }
    }
}
