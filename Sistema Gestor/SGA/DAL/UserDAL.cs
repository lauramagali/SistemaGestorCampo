﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using SERVICIOS.DB;
using System.Data.SqlClient;

namespace DAL
{
    public class UserDAL : AbstractDAL
    {
        private static UserDAL instancia = new UserDAL();

        private UserDAL() { }

        public static UserDAL GetInstance() => instancia;

        public User FindByUsername(string username)
        {
            using (SqlConnection connection = this.GetSqlConnection())
            {
                connection.Open();

                var db = new Database(connection);
                var users = db.AddParameter("@username", username)
                    .ExecuteQuery<User>("SELECT * FROM Usuarios WHERE username like @username ;");

                return users.Count > 0 ? users[0] : null;

            }
        }

        public User FindByNameLastname(string name, string lastname)
        {
            using (SqlConnection connection = this.GetSqlConnection())
            {
                connection.Open();

                var db = new Database(connection); //VER COMO PASAR OTRO PARAMETRO PARA VALIDAR X NOMBRE Y APELLIDO

                var users = db.AddParameter("@name", name)//; db.AddParameter("@lastname", lastname)
                            
                            .ExecuteQuery<User>("SELECT * FROM Usuarios WHERE name like @name and lastname like @lastname ;");

                return users.Count > 0 ? users[0] : null;

            }
        }

        public void SaveUserGrants(User usuario)
        {
            using (var connection = this.GetSqlConnection())
            {
                var cmd = new SqlCommand();
                cmd.Connection = connection;
                connection.Open();

                cmd.CommandText = $@"delete from usuarios_permisos where id_usuario=@id;";
                cmd.Parameters.Add(new SqlParameter("id", usuario.Id));
                cmd.ExecuteNonQuery();

                foreach (var item in usuario.Permisos)
                {
                    cmd = new SqlCommand();
                    cmd.Connection = connection;

                    cmd.CommandText = $@"insert into usuarios_permisos (id_usuario,id_permiso) values (@id_usuario,@id_permiso) "; ;
                    cmd.Parameters.Add(new SqlParameter("id_usuario", usuario.Id));
                    cmd.Parameters.Add(new SqlParameter("id_permiso", item.Id));

                    cmd.ExecuteNonQuery();
                }

            }
        }

        public IList<User> GetAll()
        {
            using (var connection = this.GetSqlConnection())
            {
                connection.Open();

                IList<User> lista = new Database(connection)
                    .ExecuteQuery<User>("SELECT * FROM Usuarios;");

                return lista;
            }
        }

        public IList<User> GetAllLocked()
        {
            using (var connection = this.GetSqlConnection())
            {
                connection.Open();

                IList<User> lista = new Database(connection)
                    .ExecuteQuery<User>("SELECT * FROM Usuarios WHERE FailCount=2;");

                return lista;
            }
        }

        public void SaveUser(User user)
        {
            using (var con = this.GetSqlConnection())
            {
                con.Open();
                new Database(con)

                    .AddParameter("@Username", user.Username)
                    .AddParameter("@Password", user.Password)
                    .AddParameter("@Id", user.Id)
                    .AddParameter("@LastLogin", user.LastLogin)
                    .AddParameter("@FailCount", user.FailCount)
                    .AddParameter("@Idioma", user.Language)
                    .AddParameter("@expired", user.Expired)
                    .AddParameter("@checkdigit", user.CheckDigit)
                    .AddParameter("@lastname", user.Lastname)
                    .AddParameter("@name", user.Name)
                    .ExecuteNonQuery("sp_Usuario_Upsert", true);

            }
        }

        public User FindById(Guid userId)
        {
            using (var connection = this.GetSqlConnection())
            {
                connection.Open();

                IList<User> lista = new Database(connection)
                    .AddParameter("@userId", userId)
                    .ExecuteQuery<User>("SELECT * FROM Usuarios where ID = @userId");

                return lista[0];
            }
        }

    }
}
