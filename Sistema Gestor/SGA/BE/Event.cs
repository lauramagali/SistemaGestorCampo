using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class Event : AbstractIdEntity
    {
        public Event()
        {
            this.Status = EventStatus.INICIADO;
        }
        public String Title { get; set; }

        public Customer Customer { get; set; }

        public DateTime DateFrom { get; set; }
                
        public EventType? EventType { get; set; }

        public List<AditionalService> AditionalServices { get; set; } = new List<AditionalService>();

        public Int32? GuessQuantity { get; set; }

        public EventStatus Status { get; set; }

        public decimal Price { get; set; }

        public decimal MinPrice { get; set; }

    }
}
