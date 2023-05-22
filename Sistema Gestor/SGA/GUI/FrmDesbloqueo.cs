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

namespace GUI
{
    public partial class FrmDesbloqueo : Form
    {
        private UserBLL usuarioBLL = UserBLL.Instance;
     
        public FrmDesbloqueo()
        {
            InitializeComponent();
        }
               
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void FrmDesbloqueo_Load(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
            cbxUsuario.DisplayMember = "Username";
            cbxUsuario.DataSource = usuarioBLL.GetAllLocked();
            cbxUsuario.AutoCompleteMode = AutoCompleteMode.Suggest;
            cbxUsuario.AutoCompleteSource = AutoCompleteSource.ListItems;
        }

        

        private void btnModificar_Click(object sender, EventArgs e)
        {
            var user = (User)cbxUsuario.SelectedItem;

            if (user == null)
            {
                MessageBox.Show("Seleccione un usuario", "Desbloquear usuario", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }

            DialogResult result = MessageBox.Show("Desea Desbloquear al usuario?", "Desbloquear usuario", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);

            if (DialogResult.OK == result)
            {
                usuarioBLL.UnLockUser(user);
                MessageBox.Show("Usuario desbloqueado correctamente", "Desbloquear usuario", MessageBoxButtons.OK, MessageBoxIcon.Information);
                
                cbxUsuario.SelectedItem = null;

            }
        }
    }
}
