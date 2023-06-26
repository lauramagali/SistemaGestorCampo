using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using DAL;
using SERVICIOS.Session;

namespace BLL
{
    public class EventBLL
    {
        private static readonly EventBLL instance = new EventBLL();

        private EventDAL eventDAL = EventDAL.Instance;
        private AditionalServicesBLL aditionalServiceBLL = AditionalServicesBLL.Instance;


        private EventBLL()
        {

        }

        public static EventBLL Instance => instance;

        public List<string> SaveEvent(Event evt)
        {
            var errors = ValidateEvent(evt);

            if (evt.AditionalServices.Count > 0)
            {
                foreach (var serv in evt.AditionalServices)
                {
                    errors.AddRange(this.aditionalServiceBLL.ValidateAditionalService(serv));
                }

            }

            if (errors.Count > 0) return errors;

            eventDAL.SaveEvent(evt);


            return errors;
        }


        public List<string> ValidateEvent(Event evt)
        {
            List<string> errors = new List<string>();
           
            var ocupado = eventDAL.FindEventByDate(evt.DateFrom);
            if (evt.Id == null && ocupado.Count > 0)
            {
                errors.Add("El salón no está disponible la fecha indicada");
                return errors;
            }
           
            else
            {
                if (string.IsNullOrWhiteSpace(evt.Title)) errors.Add("Debe ingresar un nombre del evento");
                if (evt.Id == null && evt.DateFrom < DateTime.Now)
                    errors.Add("Ingrese una fecha mayor a la fecha actual");

                if (evt.EventType == null) errors.Add("Indique la categoría del evento");
                if (evt.GuessQuantity == null) errors.Add("Indique la cantidad de invitados");

                return errors;
            }
           
        }   

        public IList<Event> FindEvents(Int32? eventId
            //Int32? customerId,            
            //DateTime? from
            )
        {
            return eventDAL.FindEvents(eventId);//, customerId, from);
        }

        public Event LoadFullEvent(Int32 id)
        {
           // Event evt = FindEvents(id, null, null)[0];
            Event evt = FindEvents(id)[0];
            return eventDAL.LoadFullEvent(evt);
        }

      
        //genero el presupuesto
        public Event GenerateBudget(Event evt)
        {   //mover estos valores de aca a pantalla en Diploma
            if (evt.EventType == EventType.CASAMIENTO) {
                evt.Price += 300000;
            }
            if (evt.EventType == EventType.EMPRESARIAL)
            {
                evt.Price += 400000;
            }
            if (evt.EventType == EventType.OTROS)
            {
                evt.Price += 290000;
            }

            evt.AditionalServices.ForEach(service =>
            {
                evt.Price += service.Price;
            });

            //calculo el min pago de seña (50%) configurar esto con pantalla luego

            evt.MinPrice= evt.Price/ 2;
        
            var oldStatus = evt.Status;
            evt.Status = EventStatus.PRESUPUESTADO;
            
           var errors = this.SaveEvent(evt);
            if (errors.Count > 0) evt.Status = oldStatus;

            return evt;
        }


        public List<string> PayEventMessage(Event evt)
        {
            decimal totalPrice = evt.Price;
            decimal minPaidAmount = evt.MinPrice;
            var mensajes = new List<string>();

            if (evt.Status == EventStatus.SENIADO)
            {
                mensajes.Add(("Restan Pagar de la deuda: ") + (totalPrice - minPaidAmount));
                
            }
            else if (evt.Status == EventStatus.PRESUPUESTADO)
            {
                mensajes.Add(("Debe Pagar la seña: ") + (minPaidAmount));
               
            }
            return mensajes;
        }

        public Event PayEvent(Event evt) {
            var oldstatus = evt.Status;

            if (evt.Status == EventStatus.PRESUPUESTADO) {
                evt.Status = EventStatus.SENIADO;
            }
            else if (evt.Status == EventStatus.SENIADO)
            {
                evt.Status = EventStatus.CONFIRMADO;
            }

            var errors = SaveEvent(evt);
            if (errors.Count > 0)
            {
                evt.Status = oldstatus;
            }
            return evt;

        }






    }
}

