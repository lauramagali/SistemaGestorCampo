using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class Service : AbstractIdEntity
    {
        public string Name { get; set; }

        public decimal ProviderPrice { get; set; }

        public decimal Fee { get; set; }

        public bool Status { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }


        public decimal Price
        {
            get
            {
                return ProviderPrice + ProviderPrice * (Fee / 100);
            }
        }
    }
}
