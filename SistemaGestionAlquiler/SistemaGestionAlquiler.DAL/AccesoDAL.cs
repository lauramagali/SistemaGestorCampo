using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BE;

namespace SistemaGestionAlquiler.DAL
{
    public class AccesoDAL
    {
        private static AccesoDAL Instancia = null;

        private AccesoDAL() { }

        public static AccesoDAL ObtInstancia
        {
            get
            {
                if (Instancia == null)
                {
                    Instancia = new AccesoDAL();
                }
                return Instancia;
            }
        }


        public SqlConnection ObtenerConexionSql()
        {
            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = "Data Source=ASUS-X55A\\SQLEXPRESS;Initial Catalog=SADAET;Integrated Security=True";
            return cnx;
        }




    }
}
