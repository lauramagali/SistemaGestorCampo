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
using SERVICIOS.Multilenguaje;
using SERVICIOS.Session;

namespace GUI
{
    public partial class FrmCambiarIdioma : Form
    {
        private MultiLangBLL multiIdiomaBLL = MultiLangBLL.Instance;

        public FrmCambiarIdioma()
        {
            InitializeComponent();
            MultiLang.SubscribeChangeLangEvent(this.TraducirForm);
        }

        private void TraducirForm()
        {
            WinformUtils.TraducirControl(this);
        }

        private void FrmCambiarIdioma_Load(object sender, EventArgs e)
        {

            cbxIdiomas.DisplayMember = "Descripcion";
            cbxIdiomas.DataSource = multiIdiomaBLL.GetAllIdiomas();
            cbxIdiomas.AutoCompleteMode = AutoCompleteMode.Suggest;
            cbxIdiomas.AutoCompleteSource = AutoCompleteSource.ListItems;
            cbxIdiomas.SelectedItem = null;

            btnguardar.Visible = SessionHandler.GetInstance.HasGrant(GrantType.AdministradorSistema);
            TraducirForm();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnCambiarIdioma_Click(object sender, EventArgs e)
        {
            if (cbxIdiomas.SelectedItem != null)
            {
                MultiLang.ChangeLang(((BE.Idioma)cbxIdiomas.SelectedItem).Id);
                Close();
            }
        }

        private void btnGestionar_Click(object sender, EventArgs e)
        {
            new FrmCambiarIdioma().Show();
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
