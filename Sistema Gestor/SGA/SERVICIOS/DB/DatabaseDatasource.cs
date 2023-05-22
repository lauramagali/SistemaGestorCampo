using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Win32;

namespace SERVICIOS.DB
{
    public class DatabaseDatasource
    {

        private string REGISTRY_KEY_DATASOURCE_PATH = @"SOFTWARE\SGA";
        private string REGISTRY_KEY_DATASOURCE_VALUE = @"datasourcesga";


        public static DatabaseDatasource Instance => new DatabaseDatasource();

        private DatabaseDatasource()
        {
            RegistryKey key = Registry.CurrentUser.OpenSubKey(REGISTRY_KEY_DATASOURCE_PATH);

            if (key != null)
            {
                var conString = key.GetValue(REGISTRY_KEY_DATASOURCE_VALUE);

                if (conString != null)
                {
                    this.ConnectionString = conString.ToString();
                }
            }

        }

        public void UpdateRegistryConnectionString(string conString)
        {
            RegistryKey key = Registry.CurrentUser.OpenSubKey(REGISTRY_KEY_DATASOURCE_PATH, true);

            if (key == null)
            {
                key = Registry.CurrentUser.CreateSubKey(REGISTRY_KEY_DATASOURCE_PATH);
            }

            key.SetValue(REGISTRY_KEY_DATASOURCE_VALUE, conString);
            key.Close();
            this.ConnectionString = conString;
        }



        public string ConnectionString { get; set; } = "";
    }
}
