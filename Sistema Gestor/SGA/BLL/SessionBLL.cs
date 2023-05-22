using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using DAL;
using SERVICIOS.Session;
using SERVICIOS.Bitacora;
using SERVICIOS.Errores;
using SERVICIOS.Encriptacion;


namespace BLL
{
    public class SessionBLL : AbstractBLL
    {

        private static readonly SessionBLL instance = new SessionBLL();

        private UserBLL userBLL = UserBLL.Instance;

        public static SessionBLL GetInstance() => instance;

        private SessionBLL()
        {

        }

        private static readonly SessionHandler SESSION = SessionHandler.GetInstance;

        private readonly UserDAL usuarioDAL = UserDAL.GetInstance();



        public User Login(string username, string password)
        {
            var user = userBLL.FindUser(username);

            if (user == null)
            {
                throw new BLL.ExceptionBLL("login.invaliduserpass", "Usuario y/o clave invalida");
            }

            if (user.FailCount > 2)
            {
             
                throw new BLL.ExceptionBLL("login.lockeduser", "Usuario bloqueado");
            }

            var pass = Encriptador.Hash(password, user.Id);

            if (user.Password != pass)
            {
                user.FailCount++;
                userBLL.SaveUser(user);
                throw new BLL.ExceptionBLL("login.invaliduserpass", "Usuario y/o clave invalida");
            }

            var digit = ChequeaDigito.Generate(user.Id, pass);

            if (digit != user.CheckDigit)
            {
               
                throw new BLL.ExceptionBLL("login.invaliddigit", "Registro de inicio de sesión corrupto,\n contacte al administrador");
            }

            if (user.Expired == true)
            {
              
                throw new BLL.ExceptionBLL("login.password.expired","Expiro su password, ingrese uno nuevo");
            }

            user.LastLogin = DateTime.Now;
            user.FailCount = 0;

            userBLL.SaveUser(user);

            ISet<object> grants = GrantsBLL.Instance.FindAllPermissions(user);

            SESSION.Login(user, grants);

            return user;
        }

        public void Logout()
        {
            SESSION.Logout();
        }
    }
}
