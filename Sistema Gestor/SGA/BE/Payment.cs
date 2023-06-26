using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class Payment : AbstractIdEntity
    {
        public decimal Amount { get; set; }
        public string ConciliationKey { get; set; }
        public string Type { get; set; }
        public bool Status { get; set; }

        public DateTime PaymentDate { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
        public User CreatedBy { get; set; }
        public User UpdatedBy { get; set; }
        public Int32? EventId { get; set; }
    }
}
