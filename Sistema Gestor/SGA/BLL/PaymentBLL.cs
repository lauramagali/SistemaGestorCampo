using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using BE;
using SERVICIOS.Session;

namespace BLL
{

    public class PaymentBLL
    {
        private static readonly PaymentBLL instance = new PaymentBLL();


        private PaymentDAL paymentDAL = PaymentDAL.Instance;


        private PaymentBLL()
        {

        }

        public static PaymentBLL Instance => instance;

        public List<string> SavePayment(Payment payment)
        {
            var errors = ValidatePayment(payment);
            if (errors.Count > 0) return errors;

            var user = (User)SERVICIOS.Session.SessionHandler.GetInstance.User;
            paymentDAL.SavePayment(payment, user);

            return errors;
        }

        public List<string> ValidatePayment(Payment payment)
        {
            var errors = new List<string>();
            if (string.IsNullOrWhiteSpace(payment.ConciliationKey))
            {
                errors.Add("Ingrese un criterio de conciliación");
            }

            if (payment.Amount <= 0)
            {
                errors.Add("Indique un monto");
            }

            if (payment.PaymentDate == null)
            {
                errors.Add("Indique la fecha del pago");
            }

            return errors;
        }
    }
}

