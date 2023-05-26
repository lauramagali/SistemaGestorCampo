using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SERVICIOS.Session;

namespace GUI
{
    public partial class FrmGestionarAlquileres : Form
    {
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;
        public FrmGestionarAlquileres()
        {
            InitializeComponent();
        }

        private void btncancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnRegistrarCli_Click(object sender, EventArgs e)
        {

            if (SESSION.IsLogged())
            {

                FrmGestionarAlquileres FormAutRegCli = new FrmGestionarAlquileres();
               // FormAutRegCli.MdiParent = this;
                FormAutRegCli.Show();
            }
        }

        private void btnCargarReserva_Click(object sender, EventArgs e)
        {

            if (SESSION.IsLogged())
            {

                FrmGestionarAlquileres FormAutCargarEvent = new FrmGestionarAlquileres();
               
                FormAutCargarEvent.Show();
            }

        }
    }
}
