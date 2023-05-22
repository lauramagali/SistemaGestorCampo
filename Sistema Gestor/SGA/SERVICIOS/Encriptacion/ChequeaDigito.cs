﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOS.Encriptacion
{
    /// <summary>
    /// Esta clase se encarga de generar un digito verificador en funcion de un conjunto de parametros.
    /// </summary>
    public static class ChequeaDigito
    {


        /// <summary>
        /// Funcion encargada de generar un digito verificador.
        /// </summary>
        /// <param name="values">objetos a tener en cuenta para generar el digito.</param>
        /// <returns>un numero formado en funcion de la sumotaria de bytes de lo objetos enviados como parametros</returns>
        public static int Generate(params object[] values)
        {
            int verificador = 0;
            for (int i = 0; i < values.Length; i++)
            {
                byte[] bytes = Encoding.ASCII.GetBytes(values[i].ToString());
                foreach (byte b in bytes)
                {
                    verificador += b;
                }
            }

            return verificador;
        }
    }
}
