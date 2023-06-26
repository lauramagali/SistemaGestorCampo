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
using SERVICIOS.Errores;


namespace GUI
{
    public partial class FrmRegistrarUsuario : Form
    {
        private readonly SessionBLL sessionBLL = SessionBLL.GetInstance();
        private readonly UserBLL userBLL = UserBLL.Instance;

        public FrmRegistrarUsuario()
        {
            InitializeComponent();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (txtClave.Text != txtclaverepetir.Text) {
                this.lblError.Text = "Las contraseñas no coinciden.";
            }
            else {
                var usuario = new User(this.txtUsername.Text, this.txtClave.Text);
                usuario.Phone =txtTel.Text;
                usuario.Mail = txtEmail.Text;
                usuario.Name = txtName.Text;
                usuario.Lastname = txtLastname.Text;

                try
                {
                    userBLL.Register(usuario);

                    MessageBox.Show("Usuario dado de alta correctamente.", "Registrar usuario", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    this.Close();
                }
                catch (ValidationException ve)
                {
                    this.lblError.Text = ve.Message;
                }
            }
            
        }
    }
}
