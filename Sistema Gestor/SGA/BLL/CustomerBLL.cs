using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SERVICIOS.Encriptacion;
using BE;
using DAL;

namespace BLL
{
    public class CustomerBLL : AbstractBLL
    {
        private static readonly CustomerBLL _instance = new CustomerBLL();

        private CryptoManager cryptoManager = new CryptoManager("ModuloClientesKey");

        private readonly CustomerDAL customerDAL = CustomerDAL.Instance;

        public static CustomerBLL Instance { get { return _instance; } }
        private CustomerBLL() { }

        public List<string> SaveCustomer(Customer customer)
        {
            var errors = ValidateCustomer(customer);
            if (errors.Count > 0) return errors;
            //Encripto el cliente nuevo para ir a la db a buscar que no haya otro con iguales datos
            Customer encripted = EncryptCustomer(customer);
            
            var savedCustomer = customerDAL.FindByTaxPayerId(encripted.TaxPayerId);
            if (savedCustomer != null && savedCustomer.Id != customer.Id)
            {
                errors.Add("Ya existe un cliente registrado con ese mismo DNI/CUIT");
                return errors;
            }
            
            savedCustomer = customerDAL.FindByEmail(encripted.Mail);

            if (savedCustomer != null && savedCustomer.Id != customer.Id)
            {
                errors.Add("Ya existe un cliente registrado con ese mismo Mail");
                return errors;
            }

            int id = customerDAL.SaveCustomer(encripted);

            return errors;

        }

        public List<Customer> FindCustomer(string taxPayerId, string mail, string name)
        {
            if (!string.IsNullOrWhiteSpace(taxPayerId))
            {   //encrpto solo los datos q voy a usar para buscar
                string taxPayerIdEnc = cryptoManager.EncriptAES(taxPayerId);
                var customer = customerDAL.FindByTaxPayerId(taxPayerIdEnc);
                if (customer != null)
                {
                    var list = new List<Customer>(1);
                    list.Add(DescryptCustomer(customer));
                    return list;
                }
            }
            else if (!string.IsNullOrWhiteSpace(mail))
            {
                string mailEnc = cryptoManager.EncriptAES(mail);
                var customer = customerDAL.FindByEmail(mailEnc);
                if (customer != null)
                {
                    var list = new List<Customer>(1);
                    list.Add(DescryptCustomer(customer));
                    return list;
                }

            }
            else if (!string.IsNullOrWhiteSpace(name))
            {
                IList<Customer> customers = customerDAL.FindByName(name);
                if (customers != null && customers.Count > 0)
                {
                    var list = new List<Customer>(1);
                    foreach (var c in customers)
                    {
                        list.Add(DescryptCustomer(c));
                    }

                    return list;
                }
            }

            return null;

        }

        public Customer FindCustomerById(int id)
        {
            var customer = customerDAL.FindById(id);

            return customer;

        }

        private Customer EncryptCustomer(Customer customer)
        {
            var encripted = new Customer
            {
                Id = customer.Id,
                Name = customer.Name,
                LastName = customer.LastName,
                TaxPayerId = cryptoManager.EncriptAES(customer.TaxPayerId),
                ZipCode = customer.ZipCode,
                Mail = cryptoManager.EncriptAES(customer.Mail),
                Phone = customer.Phone,
                Address = cryptoManager.EncriptAES(customer.Address)
            };
            return encripted;
        }

        public Customer DescryptCustomer(Customer customer)
        {
            var encripted = new Customer
            {
                Id = customer.Id,
                Name = customer.Name,
                LastName = customer.LastName,
                TaxPayerId = cryptoManager.DecryptAES(customer.TaxPayerId),
                ZipCode = customer.ZipCode,
                Mail = cryptoManager.DecryptAES(customer.Mail),
                Phone = customer.Phone,
                Address = cryptoManager.DecryptAES(customer.Address)
            };
            return encripted;
        }


        private List<string> ValidateCustomer(Customer customer)
        {
            List<string> errors = new List<string>();
            if (String.IsNullOrWhiteSpace(customer.Name)) errors.Add("Ingrese el nombre del cliente");
            if (String.IsNullOrWhiteSpace(customer.LastName)) errors.Add("Ingrese el Apellido del cliente");
            if (String.IsNullOrWhiteSpace(customer.TaxPayerId)) errors.Add("Ingrese el DNI/CUIT del cliente");
            if (String.IsNullOrWhiteSpace(customer.Mail)) errors.Add("Ingrese el Mail del cliente");
            if (String.IsNullOrWhiteSpace(customer.Phone)) errors.Add("Ingrese el Teléfono del cliente");
            if (String.IsNullOrWhiteSpace(customer.Address)) errors.Add("Ingrese el domicilio del cliente");
            if (String.IsNullOrWhiteSpace(customer.ZipCode)) errors.Add("Ingrese el celular del cliente");

            return errors;
        }
    }
}