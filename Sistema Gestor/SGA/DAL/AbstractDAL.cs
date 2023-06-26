﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SERVICIOS.DB;
using System.Data.SqlClient;
namespace DAL
{
    public abstract class AbstractDAL
    {
        protected string GetConnectionString()
        {
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = "NICETO";
            builder.InitialCatalog = "sge";
            builder.IntegratedSecurity = true;
           
            return builder.ConnectionString;

        }

        protected SqlConnection GetSqlConnection()
        {
            return new SqlConnection(GetConnectionString());
        }

        protected SqlConnection GetSqlConnectionOpen()
        {
            var con = GetSqlConnection();
            con.Open();
            return con;
        }

        protected int InvokeProcedure(string name)
        {
            return InvokeProcedure(name, null);
        }

        protected int InvokeProcedure(string name, IDictionary<string, object> parameters)
        {
            using (var con = this.GetSqlConnectionOpen())
            {
                var db = new Database(con);

                if (parameters != null)
                {
                    foreach (string key in parameters.Keys)
                    {
                        db.AddParameter(key, parameters[key]);
                    }
                }

                return db.ExecuteNonQuery(name, true);
            }
        }

    }
}
