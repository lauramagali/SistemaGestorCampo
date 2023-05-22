using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOS.Bitacora
{
    public class BitacoraSingleton
    {
        private static Bitacora bitacora = new Bitacora();

        public static Bitacora GetInstance { get { return bitacora; } }

        public static void Log(string message)
        {
            GetInstance.Log(message);
        }

        public static void Error(string message)
        {
            GetInstance.Error(message);
        }

        public static void Trace(string message)
        {
            GetInstance.Trace(message);
        }
    }
}
