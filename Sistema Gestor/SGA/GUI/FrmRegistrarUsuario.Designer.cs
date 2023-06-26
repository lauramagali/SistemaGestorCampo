
namespace GUI
{
    partial class FrmRegistrarUsuario
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
            this.gbxUsuario = new System.Windows.Forms.GroupBox();
            this.txtclaverepetir = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lblError = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnRegistrar = new System.Windows.Forms.Button();
            this.txtClave = new System.Windows.Forms.TextBox();
            this.txtUsername = new System.Windows.Forms.TextBox();
            this.txtLastname = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.lblApellido = new System.Windows.Forms.Label();
            this.lblNombre = new System.Windows.Forms.Label();
            this.lblClave = new System.Windows.Forms.Label();
            this.lblUsername = new System.Windows.Forms.Label();
            this.txtTelefono = new System.Windows.Forms.Label();
            this.txtEmail = new System.Windows.Forms.Label();
            this.txtTel = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.gbxUsuario.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbxUsuario
            // 
            this.gbxUsuario.Controls.Add(this.textBox1);
            this.gbxUsuario.Controls.Add(this.txtTel);
            this.gbxUsuario.Controls.Add(this.txtEmail);
            this.gbxUsuario.Controls.Add(this.txtTelefono);
            this.gbxUsuario.Controls.Add(this.txtclaverepetir);
            this.gbxUsuario.Controls.Add(this.label1);
            this.gbxUsuario.Controls.Add(this.lblError);
            this.gbxUsuario.Controls.Add(this.btnCancel);
            this.gbxUsuario.Controls.Add(this.btnRegistrar);
            this.gbxUsuario.Controls.Add(this.txtClave);
            this.gbxUsuario.Controls.Add(this.txtUsername);
            this.gbxUsuario.Controls.Add(this.txtLastname);
            this.gbxUsuario.Controls.Add(this.txtName);
            this.gbxUsuario.Controls.Add(this.lblApellido);
            this.gbxUsuario.Controls.Add(this.lblNombre);
            this.gbxUsuario.Controls.Add(this.lblClave);
            this.gbxUsuario.Controls.Add(this.lblUsername);
            this.gbxUsuario.Location = new System.Drawing.Point(38, 48);
            this.gbxUsuario.Name = "gbxUsuario";
            this.gbxUsuario.Size = new System.Drawing.Size(564, 462);
            this.gbxUsuario.TabIndex = 0;
            this.gbxUsuario.TabStop = false;
            this.gbxUsuario.Tag = "user";
            this.gbxUsuario.Text = "Usuario";
            // 
            // txtclaverepetir
            // 
            this.txtclaverepetir.Location = new System.Drawing.Point(195, 345);
            this.txtclaverepetir.Name = "txtclaverepetir";
            this.txtclaverepetir.Size = new System.Drawing.Size(331, 26);
            this.txtclaverepetir.TabIndex = 11;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(32, 348);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(152, 20);
            this.label1.TabIndex = 10;
            this.label1.Text = "Repetir Contraseña:";
            // 
            // lblError
            // 
            this.lblError.AutoSize = true;
            this.lblError.ForeColor = System.Drawing.Color.Red;
            this.lblError.Location = new System.Drawing.Point(113, 0);
            this.lblError.Name = "lblError";
            this.lblError.Size = new System.Drawing.Size(0, 20);
            this.lblError.TabIndex = 1;
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(188, 402);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(141, 37);
            this.btnCancel.TabIndex = 9;
            this.btnCancel.Tag = "btn.cancel";
            this.btnCancel.Text = "Cancelar";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.Location = new System.Drawing.Point(385, 402);
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.Size = new System.Drawing.Size(141, 37);
            this.btnRegistrar.TabIndex = 8;
            this.btnRegistrar.Tag = "btn.singin";
            this.btnRegistrar.Text = "Registrar";
            this.btnRegistrar.UseVisualStyleBackColor = true;
            this.btnRegistrar.Click += new System.EventHandler(this.btnRegistrar_Click);
            // 
            // txtClave
            // 
            this.txtClave.Location = new System.Drawing.Point(195, 297);
            this.txtClave.Name = "txtClave";
            this.txtClave.Size = new System.Drawing.Size(331, 26);
            this.txtClave.TabIndex = 7;
            // 
            // txtUsername
            // 
            this.txtUsername.Location = new System.Drawing.Point(195, 244);
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.Size = new System.Drawing.Size(331, 26);
            this.txtUsername.TabIndex = 6;
            // 
            // txtLastname
            // 
            this.txtLastname.Location = new System.Drawing.Point(117, 95);
            this.txtLastname.Name = "txtLastname";
            this.txtLastname.Size = new System.Drawing.Size(409, 26);
            this.txtLastname.TabIndex = 5;
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(117, 47);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(409, 26);
            this.txtName.TabIndex = 4;
            // 
            // lblApellido
            // 
            this.lblApellido.AutoSize = true;
            this.lblApellido.Location = new System.Drawing.Point(32, 102);
            this.lblApellido.Name = "lblApellido";
            this.lblApellido.Size = new System.Drawing.Size(69, 20);
            this.lblApellido.TabIndex = 3;
            this.lblApellido.Text = "Apellido:";
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(32, 50);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(69, 20);
            this.lblNombre.TabIndex = 2;
            this.lblNombre.Text = "Nombre:";
            // 
            // lblClave
            // 
            this.lblClave.AutoSize = true;
            this.lblClave.Location = new System.Drawing.Point(32, 300);
            this.lblClave.Name = "lblClave";
            this.lblClave.Size = new System.Drawing.Size(96, 20);
            this.lblClave.TabIndex = 1;
            this.lblClave.Text = "Contraseña:";
            // 
            // lblUsername
            // 
            this.lblUsername.AutoSize = true;
            this.lblUsername.Location = new System.Drawing.Point(32, 247);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(150, 20);
            this.lblUsername.TabIndex = 0;
            this.lblUsername.Text = "Nombre de Usuario:";
            // 
            // txtTelefono
            // 
            this.txtTelefono.AutoSize = true;
            this.txtTelefono.Location = new System.Drawing.Point(32, 150);
            this.txtTelefono.Name = "txtTelefono";
            this.txtTelefono.Size = new System.Drawing.Size(75, 20);
            this.txtTelefono.TabIndex = 12;
            this.txtTelefono.Text = "Telefono:";
            // 
            // txtEmail
            // 
            this.txtEmail.AutoSize = true;
            this.txtEmail.Location = new System.Drawing.Point(32, 197);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(57, 20);
            this.txtEmail.TabIndex = 13;
            this.txtEmail.Text = "E-Mail:";
            // 
            // txtTel
            // 
            this.txtTel.Location = new System.Drawing.Point(117, 143);
            this.txtTel.Name = "txtTel";
            this.txtTel.Size = new System.Drawing.Size(409, 26);
            this.txtTel.TabIndex = 14;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(117, 191);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(409, 26);
            this.textBox1.TabIndex = 15;
            // 
            // FrmRegistrarUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(649, 549);
            this.Controls.Add(this.gbxUsuario);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "FrmRegistrarUsuario";
            this.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.Text = "Registrar Usuario";
            this.gbxUsuario.ResumeLayout(false);
            this.gbxUsuario.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxUsuario;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnRegistrar;
        private System.Windows.Forms.TextBox txtClave;
        private System.Windows.Forms.TextBox txtUsername;
        private System.Windows.Forms.TextBox txtLastname;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label lblApellido;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Label lblClave;
        private System.Windows.Forms.Label lblUsername;
        private System.Windows.Forms.Label lblError;
        private System.Windows.Forms.TextBox txtclaverepetir;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label txtTelefono;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox txtTel;
        private System.Windows.Forms.Label txtEmail;
    }
}