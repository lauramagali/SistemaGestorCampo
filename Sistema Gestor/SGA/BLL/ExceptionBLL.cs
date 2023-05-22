using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class ExceptionBLL : Exception
    {
        public String MessageKey { get; set; }
        public String MessageText { get; set; }

        public ExceptionBLL(string messageKey, string messageText, Exception e = null) : base(messageText, e)
        {
            MessageKey = messageKey;
            MessageText = messageText;
        }

    }
}
