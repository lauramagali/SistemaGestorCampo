
namespace GUI
{
    partial class FrmModificarUsuario
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gbxConfigurarUsuario = new System.Windows.Forms.GroupBox();
            this.txtemaileditable = new System.Windows.Forms.TextBox();
            this.txtTeleditable = new System.Windows.Forms.TextBox();
            this.txtEmail = new System.Windows.Forms.Label();
            this.txtTelefono = new System.Windows.Forms.Label();
            this.txtLastname = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.lblApellido = new System.Windows.Forms.Label();
            this.lblNombre = new System.Windows.Forms.Label();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnModificar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.cbxUsuario = new System.Windows.Forms.ComboBox();
            this.gbxConfigurarUsuario.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbxConfigurarUsuario
            // 
            this.gbxConfigurarUsuario.Controls.Add(this.txtemaileditable);
            this.gbxConfigurarUsuario.Controls.Add(this.txtTeleditable);
            this.gbxConfigurarUsuario.Controls.Add(this.txtEmail);
            this.gbxConfigurarUsuario.Controls.Add(this.txtTelefono);
            this.gbxConfigurarUsuario.Controls.Add(this.txtLastname);
            this.gbxConfigurarUsuario.Controls.Add(this.txtName);
            this.gbxConfigurarUsuario.Controls.Add(this.lblApellido);
            this.gbxConfigurarUsuario.Controls.Add(this.lblNombre);
            this.gbxConfigurarUsuario.Controls.Add(this.btnCancelar);
            this.gbxConfigurarUsuario.Controls.Add(this.btnModificar);
            this.gbxConfigurarUsuario.Controls.Add(this.label1);
            this.gbxConfigurarUsuario.Controls.Add(this.cbxUsuario);
            this.gbxConfigurarUsuario.Location = new System.Drawing.Point(41, 69);
            this.gbxConfigurarUsuario.Name = "gbxConfigurarUsuario";
            this.gbxConfigurarUsuario.Size = new System.Drawing.Size(518, 390);
            this.gbxConfigurarUsuario.TabIndex = 0;
            this.gbxConfigurarUsuario.TabStop = false;
            this.gbxConfigurarUsuario.Tag = "admin.users.usersetup";
            this.gbxConfigurarUsuario.Text = "Modificar Usuario";
            // 
            // txtemaileditable
            // 
            this.txtemaileditable.Location = new System.Drawing.Point(115, 243);
            this.txtemaileditable.Name = "txtemaileditable";
            this.txtemaileditable.Size = new System.Drawing.Size(360, 26);
            this.txtemaileditable.TabIndex = 19;
            // 
            // txtTeleditable
            // 
            this.txtTeleditable.Location = new System.Drawing.Point(115, 195);
            this.txtTeleditable.Name = "txtTeleditable";
            this.txtTeleditable.Size = new System.Drawing.Size(360, 26);
            this.txtTeleditable.TabIndex = 18;
            // 
            // txtEmail
            // 
            this.txtEmail.AutoSize = true;
            this.txtEmail.Location = new System.Drawing.Point(30, 249);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(57, 20);
            this.txtEmail.TabIndex = 17;
            this.txtEmail.Text = "E-Mail:";
            // 
            // txtTelefono
            // 
            this.txtTelefono.AutoSize = true;
            this.txtTelefono.Location = new System.Drawing.Point(30, 202);
            this.txtTelefono.Name = "txtTelefono";
            this.txtTelefono.Size = new System.Drawing.Size(75, 20);
            this.txtTelefono.TabIndex = 16;
            this.txtTelefono.Text = "Telefono:";
            // 
            // txtLastname
            // 
            this.txtLastname.Enabled = false;
            this.txtLastname.Location = new System.Drawing.Point(115, 147);
            this.txtLastname.Name = "txtLastname";
            this.txtLastname.Size = new System.Drawing.Size(360, 26);
            this.txtLastname.TabIndex = 9;
            // 
            // txtName
            // 
            this.txtName.Enabled = false;
            this.txtName.Location = new System.Drawing.Point(115, 99);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(360, 26);
            this.txtName.TabIndex = 8;
            // 
            // lblApellido
            // 
            this.lblApellido.AutoSize = true;
            this.lblApellido.Location = new System.Drawing.Point(30, 154);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(69, 20);
            this.lblApellido.TabIndex = 7;
            this.lblApellido.Text = "Apellido:";
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(30, 102);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(69, 20);
            this.lblNombre.TabIndex = 6;
            this.lblNombre.Text = "Nombre:";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(62, 318);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(185, 33);
            this.btnCancelar.TabIndex = 5;
            this.btnCancelar.Tag = "btn.cancel";
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnModificar
            // 
            this.btnModificar.Location = new System.Drawing.Point(290, 315);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(185, 36);
            this.btnModificar.TabIndex = 2;
            this.btnModificar.Tag = "btn.modif";
            this.btnModificar.Text = "Modificar";
            this.btnModificar.UseVisualStyleBackColor = true;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(27, 51);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(150, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Seleccione Usuario:";
            // 
            // cbxUsuario
            // 
            this.cbxUsuario.FormattingEnabled = true;
            this.cbxUsuario.Location = new System.Drawing.Point(199, 48);
            this.cbxUsuario.Name = "cbxUsuario";
            this.cbxUsuario.Size = new System.Drawing.Size(276, 28);
            this.cbxUsuario.TabIndex = 0;
            this.cbxUsuario.SelectedIndexChanged += new System.EventHandler(this.cbxUsuario_SelectedIndexChanged);
            // 
            // FrmModificarUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(144F, 144F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
            this.ClientSize = new System.Drawing.Size(629, 499);
            this.Controls.Add(this.gbxConfigurarUsuario);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmModificarUsuario";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Crear Modificar Usuario";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.FrmCrearModificarUsuario_Load);
            this.gbxConfigurarUsuario.ResumeLayout(false);
            this.gbxConfigurarUsuario.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxConfigurarUsuario;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbxUsuario;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.TextBox txtLastname;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label lblApellido;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.TextBox txtemaileditable;
        private System.Windows.Forms.TextBox txtTeleditable;
        private System.Windows.Forms.Label txtEmail;
        private System.Windows.Forms.Label txtTelefono;
    }
}