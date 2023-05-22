using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOS.Bitacora
{
    public class BitacoraConsoleWriter : IBitacoraWriter
    {
        public void Write(string userReferenceId, string message, string criticity)
        {
            Console.WriteLine($"[citicity:{criticity}][datetime:{DateTime.Now}][userReferenceId:{ userReferenceId }] {message}");
        }
    }
}
