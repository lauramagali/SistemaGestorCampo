using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
using BE;
using SERVICIOS.Session;


namespace GUI
{
    public partial class FrmGestionarUsuarios : Form
    {
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;
        FrmLogin FormAut = new FrmLogin();

        public FrmGestionarUsuarios()
        {
            InitializeComponent();
        }
       
        private void btnAgregar_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged())
            {

                if (SESSION.User.Username == "Admin" || SESSION.User.Username == "admin")
                {
                    FrmRegistrarUsuario FormAutCrearUsu = new FrmRegistrarUsuario();
                    FormAutCrearUsu.MdiParent = this;
                    FormAutCrearUsu.Show();
                }
                else
                {
                    MessageBox.Show("Solo un administrador puede acceder.", "Administración", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }


            }
            else
            {
                MessageBox.Show("No ha iniciado sesión.", "Crear usuario", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged())
            {

                if (SESSION.User.Username == "Admin" || SESSION.User.Username == "admin")
                {
                    FrmModificarUsuario FormAutMod = new FrmModificarUsuario();
                    FormAutMod.MdiParent = this;
                    FormAutMod.Show();
                }
                else
                {
                    MessageBox.Show("Solo un administrador puede acceder.", "Administración", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }


            }
            else
            {
                MessageBox.Show("No ha iniciado sesión.", "Crear usuario", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void btnDesbloquear_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged())
            {
                if (SESSION.User.Username == "Admin" || SESSION.User.Username == "admin")
                {
                    FrmDesbloqueo FormAutDesBlo = new FrmDesbloqueo();
                    FormAutDesBlo.MdiParent = this;
                    FormAutDesBlo.Show();
                }
                else
                {
                    MessageBox.Show("Solo un administrador puede acceder.", "Administración", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
            {
                MessageBox.Show("No ha iniciado sesión.", "Crear usuario", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}
