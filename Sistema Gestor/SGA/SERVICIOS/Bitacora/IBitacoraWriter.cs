using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOS.Bitacora
{
    public interface IBitacoraWriter
    {
        /// <summary>
        /// Escribira todo lo que se intente guardar en la bitacora.
        /// </summary>
        /// <param name="userReferenceId">user reference id</param>
        /// <param name="message">message</param>
        void Write(string userReferenceId, string message, string criticity);

    }
}
