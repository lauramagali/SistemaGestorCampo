using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SERVICIOS.Session
{
    public interface IUser
    {
         Guid Id { get; }
         string Username { get; }
    }
}
