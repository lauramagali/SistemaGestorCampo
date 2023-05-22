using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BE.Permisos;
using BLL;
using SERVICIOS;
using SERVICIOS.Bitacora;
using SERVICIOS.Multilenguaje;
using SERVICIOS.Session;
using System.IO;

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
            SessionBLL.GetInstance().Logout();
            if (FormAut.IsDisposed)
            {
                FormAut = new FrmLogin();
            }

            FormAut.MdiParent = this;
            FormAut.Show();
           

        }

        private void cambiarClaveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(SESSION.IsLogged())
            {
                FrmChangePassword FormAutPass = new FrmChangePassword();
                FormAutPass.MdiParent = this;
                FormAutPass.Show();
            }
        }

        private void crearModificarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged())
            {
                FrmCrearModificarUsuario FormAutCrearMod = new FrmCrearModificarUsuario();
                FormAutCrearMod.MdiParent = this;
                FormAutCrearMod.Show();
            }

        }

        private void desbloquearToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (SESSION.IsLogged())
            {
                FrmDesbloqueo FormAutDesBlo = new FrmDesbloqueo();
                FormAutDesBlo.MdiParent = this;
                FormAutDesBlo.Show();
            }
        }

        private void reservasToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
