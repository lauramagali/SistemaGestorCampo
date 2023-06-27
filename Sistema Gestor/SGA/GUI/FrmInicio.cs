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
using SERVICIOS.Session;
using BE.Permisos;


namespace GUI
{
    public partial class FrmInicio : Form
    {
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;
        FrmLogin FormAut = new FrmLogin();

        public FrmInicio()
        {
            InitializeComponent();

            if (SESSION.IsNotLogged())
            {
                FrmLogin FormAut = new FrmLogin();
                FormAut.MdiParent = this;
                FormAut.Show();
            }
            else
            {
                FormAut.MainMenuStrip.Visible = true;
            }

        }

        private void cerrarSesionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged())
            {
                DialogResult dialogResult = MessageBox.Show("¿Está seguro que desea cerrar sesion?", "Logout", MessageBoxButtons.YesNo, MessageBoxIcon.Information);
                if (dialogResult == DialogResult.Yes)
                {
                    SessionBLL.GetInstance().Logout();
                    if (FormAut.IsDisposed)
                    {
                        FormAut = new FrmLogin();
                    }

                    FormAut.MdiParent = this;
                    FormAut.Show();
                }
                else if (dialogResult == DialogResult.No)
                {
                    MessageBox.Show("La sesión no se cerrará.", "Logout", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
            }
            else {
                MessageBox.Show("No ha iniciado sesión.", "Logout", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }



        }

        private void cambiarClaveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(SESSION.IsLogged())
            {
                FrmChangePassword FormAutPass = new FrmChangePassword();
                FormAutPass.MdiParent = this;
                FormAutPass.Show();
            }
            else
            {
                MessageBox.Show("No ha iniciado sesión.", "Cambiar Clave", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void crearModificarToolStripMenuItem_Click(object sender, EventArgs e)
        {
             if (SESSION.IsLogged())
            {
                bool esAdmin = SESSION.HasGrant(GrantType.Administrador);
                if (esAdmin) {
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

        private void desbloquearToolStripMenuItem1_Click(object sender, EventArgs e)
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

        private void reservasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged()) {

                FrmGestionarAlquileres FormAutGest = new FrmGestionarAlquileres();
               // FormAutGest.MdiParent = this;
                FormAutGest.Show();
            }
            else
            {
                MessageBox.Show("No ha iniciado sesión.", "Alquileres", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void cambiarIdiomaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
                FrmCambiarIdioma FormIdioma = new FrmCambiarIdioma();
                
                FormIdioma.Show();
           
        }

        private void proveedoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sección en Desarrollo.", "Proveedores", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void serviciosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sección en Desarrollo.", "Servicios", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void admnistrarPermisosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sección en Desarrollo.", "Perfiles", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void CrearModificarUsuariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged())
            {
                FrmGestionarPermisos FormPerGest = new FrmGestionarPermisos();
                
                FormPerGest.Show();
            }
            else
            {
                MessageBox.Show("No ha iniciado sesión.", "Permisos", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void asignarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sección en Desarrollo.", "Perfiles", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void organizarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sección en Desarrollo para Diploma.", "Organizar", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void reporteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sección en Desarrollo.", "Reportes", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void ayudaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sección en Desarrollo.", "Ayuda", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void admnistrarUsuariosToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void idiomasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged())
            {

                FrmGestionarIdioma FormGestIdi = new FrmGestionarIdioma();
                // FormAutGest.MdiParent = this;
                FormGestIdi.Show();
            }
            else
            {
                MessageBox.Show("No ha iniciado sesión.", "Idiomas", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
    }
}
