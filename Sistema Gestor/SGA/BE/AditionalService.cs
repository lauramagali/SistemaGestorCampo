using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BE
{
    public class AditionalService : AbstractIdEntity
    {
        public Int32 EventId { get; set; }
        public Int32 ServiceId { get; set; }

        public Service Service { get; set; } = new Service();

        public decimal Quantity { get; set; }

        public decimal Price { get; set; }

        public AditionalServiceStatus Status { get; set; } = AditionalServiceStatus.PENDING;
        public DateTime CreatedAt { get; set; }


    }
}
