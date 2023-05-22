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
using SERVICIOS.Errores;

namespace GUI
{
    public partial class FrmChangePassword : Form
    {
        private UserBLL userBLL = UserBLL.Instance;
        public FrmChangePassword()
        {
            InitializeComponent();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnChangePassword_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtNewPass.Text) || string.IsNullOrWhiteSpace(txtNewPassRepeat.Text))
            {
                MessageBox.Show("Escriba la nueva contraseña", "Cambiar Password", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (!txtNewPass.Text.Equals(txtNewPassRepeat.Text))
            {
                MessageBox.Show("Las nuevas contraseñas no coinciden.", "Cambiar Password", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            try
            {
                 userBLL.ResetUserPassword(txtUsername.Text, txtPassword.Text, txtNewPass.Text);
           
                MessageBox.Show("Clave cambiada correctamente.", "Cambiar Password", MessageBoxButtons.OK, MessageBoxIcon.Information);
                //Solo para la primer entrega, luego borrar este messagebox:
                string claveEncriptada = userBLL.FindUser(txtUsername.Text).Password.ToString();
                MessageBox.Show("Nueva Clave Encriptada: "+claveEncriptada, "Cambiar Password", MessageBoxButtons.OK, MessageBoxIcon.Information);

                this.Close();
            }
            catch (ValidationException ve)
            {
                MessageBox.Show(ve.Message);
            }
            catch (Exception ex) { throw ex; }
        }
    }
}
