using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class Activity : AbstractIdEntity
    {
        public int ActivityOrder { get; set; }

        public string Description { get; set; }

        public Boolean Enabled { get; set; } = true;

    }
}
