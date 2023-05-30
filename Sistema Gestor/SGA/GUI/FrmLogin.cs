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
    public partial class FrmLogin : Form
    {
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;
        public FrmLogin()
        {
            InitializeComponent();
            this.lblError.AutoSize = true;
            this.lblError.MaximumSize = new System.Drawing.Size(300, 0);
           
            if (SESSION.IsLogged())
            {
                MessageBox.Show("El usuario ya posee una sesión abierta.", "Login", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private SessionBLL sessionBLL = SessionBLL.GetInstance();

        private void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                this.lblError.Visible = false;
                var usuario= sessionBLL.Login(this.txtUsername.Text, this.txtPassword.Text);
                
                this.Close();               

            }            
            catch (BLL.ExceptionBLL ex) 
            {
                this.lblError.Text =ex.MessageText;
                this.lblError.Visible = true;
            }
        }
        

    }
}
