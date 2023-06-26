using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using DAL;
namespace BLL
{
    public class AditionalServicesBLL
    {
        #region singleton
        private static readonly AditionalServicesBLL _instance = new AditionalServicesBLL();

        public static AditionalServicesBLL Instance { get { return _instance; } }
        private AditionalServicesBLL() { }
        #endregion singleton

        private AditionalServicesDAL aditionalServiceDAL = AditionalServicesDAL.Instance;

        public IList<Service> FindServicesByName(string name)
        {
            return aditionalServiceDAL.FindServicesByName(name);
        }

        public IList<Service> FindAll()
        {
            return aditionalServiceDAL.GetAll();
        }

        public List<string> ValidateAditionalService(AditionalService aserv)
        {
            var errors = new List<string>();

            if (aserv.Quantity < 1)
            {
                errors.Add("El minimo a contratar por cada servicio es de 1");
            }

            return errors;
        }

        public void SaveService(Service service)
        {
            aditionalServiceDAL.SaveService(service);
           
        }

        public List<string> Confirm(AditionalService aditionalService, decimal realCost)
        {

            var errors = new List<string>();
            if (aditionalService.CalculedPrice < realCost * aditionalService.Quantity)
            {
                errors.Add("Se supero el monto abonado por el cliente.");
            }


            if (errors.Count == 0)
            {
                aditionalService.Status = AditionalServiceStatus.CONFIRMED;
                aditionalService.Cost = realCost * aditionalService.Quantity;
                aditionalServiceDAL.SaveAditionalService(aditionalService);
            }

            return errors;

        }

        public void CancelProvider(AditionalService aditionalService, decimal realCost)
        {
            aditionalService.Status = AditionalServiceStatus.CANCELED;
            aditionalService.Cost = realCost * aditionalService.Quantity;
            aditionalServiceDAL.SaveAditionalService(aditionalService);
           
        }
    }
}
