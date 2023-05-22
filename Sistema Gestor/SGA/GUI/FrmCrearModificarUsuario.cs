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
using SERVICIOS.Errores;
using System.Diagnostics;
using System.IO;


namespace GUI
{
    public partial class FrmCrearModificarUsuario : Form
    {
        private UserBLL usuarioBLL = UserBLL.Instance;
        private User editable;
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;

        public FrmCrearModificarUsuario()
        {
            InitializeComponent();
        }

       

        private void btnNewEdit_Click(object sender, EventArgs e)
        {

            if (SESSION.IsLogged())
            {
                FrmRegistrarUsuario FormAutReg = new FrmRegistrarUsuario();
                FormAutReg.Show();
               
            }

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();

        }
               
        private void btnModificar_Click(object sender, EventArgs e)
        {
            try {
                if (cbxUsuario.SelectedItem != null && txtName.Text != "" && txtLastname.Text != "")
                {
                    this.editable = (User)cbxUsuario.SelectedItem;
                    this.editable.Lastname = txtLastname.Text;
                    this.editable.Name = txtName.Text;
                   // usuarioBLL.ModifyUser(this.editable);
                    usuarioBLL.SaveUser(this.editable); //falta termnar la validacion de nombre y apellido
                    setFormControlsUser(false);
                    txtName.Text = "";
                    txtLastname.Text = "";
                    MessageBox.Show("Usuario Modificado Correctamente", "Modificar usuario", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                else {
                    MessageBox.Show("Debe ingresar valores válidos.", "Modificar usuario", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                }
            }
            catch (ValidationException ve) {
                MessageBox.Show("Usuario Existente!", "Modificar usuario", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmCrearModificarUsuario_Load(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
            cbxUsuario.DisplayMember = "Username";
            cbxUsuario.DataSource = usuarioBLL.GetAll();
            cbxUsuario.AutoCompleteMode = AutoCompleteMode.Suggest;
            cbxUsuario.AutoCompleteSource = AutoCompleteSource.ListItems;
        }

        private void cbxUsuario_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            if (cbxUsuario.SelectedItem != null)
            {
                this.editable = (User)cbxUsuario.SelectedItem;
                setFormControlsUser(true);
                txtName.Text = this.editable.Name;
                txtLastname.Text =this.editable.Lastname;
            }

         }

        public void setFormControlsUser(bool var)
        {
            txtLastname.Enabled = var;
            txtName.Enabled = var;
        }
    }
}
