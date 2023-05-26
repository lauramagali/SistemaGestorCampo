using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using DAL;
using SERVICIOS.Bitacora;
using SERVICIOS.Encriptacion;
using SERVICIOS.Errores;


namespace BLL
{
    public class UserBLL : AbstractBLL
    {
        private static UserBLL instance = new UserBLL();
        private static UserDAL userDAL = UserDAL.GetInstance();


        private UserBLL() { }

        public static UserBLL Instance => instance;

        public IList<User> GetAll()
        {
            return userDAL.GetAll();
        }

        public IList<User> GetAllLocked() {

            return userDAL.GetAllLocked();
        }

        public void SaveUserGrants(User usuario)
        {
            userDAL.SaveUserGrants(usuario);
            BitacoraSingleton.GetInstance.Log($"Se guardaron los permisos del usuario {usuario.Username}");
        }

        public User FindUser(string username)
        {
            User usuario = userDAL.FindByUsername(username);

            return usuario;
        }

        public void SaveUser(User user)
        {
            userDAL.SaveUser(user);
        }

        public void Register(User usuario)
        {
            if (string.IsNullOrWhiteSpace(usuario.Username)) throw new ValidationException("Nombre de usuario requerido");
            if (string.IsNullOrWhiteSpace(usuario.Password)) throw new ValidationException("Password requerido");
            if (string.IsNullOrWhiteSpace(usuario.Name)) throw new ValidationException("Nombre requerido");
            if (string.IsNullOrWhiteSpace(usuario.Lastname)) throw new ValidationException("Apellido requerido");


            var usuarioBD = FindUser(usuario.Username);

            if (usuarioBD != null)
            {
                throw new ValidationException("El nombre de usuario ya esta registrado");
            }

            usuario.Id = Guid.NewGuid();

            RecalculateUserIntegrity(usuario, usuario.Password);
          
            usuario.Language = "es-AR";

            SaveUser(usuario);
        }

        private User RecalculateUserIntegrity(User usuario, string password)
        {
            var passwordHash = Encriptador.Hash(password, usuario.Id);
            usuario.Password = passwordHash;
            usuario.CheckDigit = ChequeaDigito.Generate(usuario.Id, passwordHash);
            usuario.Expired = false;
            usuario.FailCount = 0;

            return usuario;
        }

        public void ResetPassword(string username, string password)
        {
            if (string.IsNullOrWhiteSpace(password)) throw new ValidationException("Contraseña requerida");

            var user = FindUser(username);

            RecalculateUserIntegrity(user, password);
            user.Expired = true;

            SaveUser(user);
        }
       
        public void ResetUserPassword(string username, string actual, string newpass)
        {
            if (string.IsNullOrWhiteSpace(actual)) throw new ValidationException("Contraseña requerida");
            if (string.IsNullOrWhiteSpace(newpass)) throw new ValidationException( "Contraseña nueva requerida");

            var user = FindUser(username);

            if(user==null) throw new ValidationException("Usuario Incorrecto.");
            var actualhash = Encriptador.Hash(actual, user.Id);

            if (!actualhash.Equals(user.Password))
            {
        
                throw new ValidationException("Contraseña actual invalida.");

            }

            user.Password = Encriptador.Hash(actual, user.Id);

            RecalculateUserIntegrity(user, newpass);

            SaveUser(user);
        }

        public void LockUser(string username)
        {
            var user = FindUser(username);
            user.FailCount = 3;

            SaveUser(user);
        }
        public void UnLockUser(User user)
        {           
            user.FailCount = 0;

            SaveUser(user);
        }

        public User findUserById(Guid userId)
        {
            return userDAL.FindById(userId);
        }

        
    }
}
