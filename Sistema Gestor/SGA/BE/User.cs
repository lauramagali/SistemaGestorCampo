using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE.Permisos;
using SERVICIOS.Session;

namespace BE
{
    public class User : AbstractGuidEntity, IUser
    {

        public User()
        {

        }

        public User(string username, string password) : base()
        {
            Username = username ?? throw new ArgumentNullException(nameof(username));
            Password = password ?? throw new ArgumentNullException(nameof(password));
        }

        public String Mail { get; set; }

        public String Phone { get; set; }

        public string Username { get; set; }

        public string Password { get; set; }

        public string Language { get; set; }

        public string Name { get; set; }

        public string Lastname { get; set; } = string.Empty;

        public List<AbstractComponent> Permisos { get; set; }
       
        public int FailCount { get; set; } = 0;

        public DateTime? LastLogin { get; set; }

        public bool Expired { get; set; } = false;

        public int CheckDigit { get; set; }


    }
}
