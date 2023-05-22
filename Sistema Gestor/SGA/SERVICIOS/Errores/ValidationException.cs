using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOS.Errores
{
    public class ValidationException : GenericException
    {
        public ValidationException(String message) : base(message)
        {

        }
    }
}
