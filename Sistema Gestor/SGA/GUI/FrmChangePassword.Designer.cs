
namespace GUI
{
    partial class FrmChangePassword
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
            this.gbxChangePassword = new System.Windows.Forms.GroupBox();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnChangePassword = new System.Windows.Forms.Button();
            this.txtNewPassRepeat = new System.Windows.Forms.TextBox();
            this.txtNewPass = new System.Windows.Forms.TextBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.txtUsername = new System.Windows.Forms.TextBox();
            this.lblRepetirClaveNueva = new System.Windows.Forms.Label();
            this.lblClaveNueva = new System.Windows.Forms.Label();
            this.lblPassword = new System.Windows.Forms.Label();
            this.lblNombreUSuario = new System.Windows.Forms.Label();
            this.gbxChangePassword.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbxChangePassword
            // 
            this.gbxChangePassword.Controls.Add(this.btnCancel);
            this.gbxChangePassword.Controls.Add(this.btnChangePassword);
            this.gbxChangePassword.Controls.Add(this.txtNewPassRepeat);
            this.gbxChangePassword.Controls.Add(this.txtNewPass);
            this.gbxChangePassword.Controls.Add(this.txtPassword);
            this.gbxChangePassword.Controls.Add(this.txtUsername);
            this.gbxChangePassword.Controls.Add(this.lblRepetirClaveNueva);
            this.gbxChangePassword.Controls.Add(this.lblClaveNueva);
            this.gbxChangePassword.Controls.Add(this.lblPassword);
            this.gbxChangePassword.Controls.Add(this.lblNombreUSuario);
            this.gbxChangePassword.Location = new System.Drawing.Point(54, 49);
            this.gbxChangePassword.Name = "gbxChangePassword";
            this.gbxChangePassword.Size = new System.Drawing.Size(635, 321);
            this.gbxChangePassword.TabIndex = 9;
            this.gbxChangePassword.TabStop = false;
            this.gbxChangePassword.Tag = "frmlogin.login.title";
            this.gbxChangePassword.Text = "Cambio de clave";
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(189, 255);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(138, 31);
            this.btnCancel.TabIndex = 9;
            this.btnCancel.Tag = "btn.cancel";
            this.btnCancel.Text = "Cancelar";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnChangePassword
            // 
            this.btnChangePassword.Location = new System.Drawing.Point(372, 255);
            this.btnChangePassword.Name = "btnChangePassword";
            this.btnChangePassword.Size = new System.Drawing.Size(149, 31);
            this.btnChangePassword.TabIndex = 8;
            this.btnChangePassword.Tag = "btn.changepassword";
            this.btnChangePassword.Text = "Cambiar clave";
            this.btnChangePassword.UseVisualStyleBackColor = true;
            this.btnChangePassword.Click += new System.EventHandler(this.btnChangePassword_Click);
            // 
            // txtNewPassRepeat
            // 
            this.txtNewPassRepeat.Location = new System.Drawing.Point(189, 195);
            this.txtNewPassRepeat.Name = "txtNewPassRepeat";
            this.txtNewPassRepeat.Size = new System.Drawing.Size(416, 26);
            this.txtNewPassRepeat.TabIndex = 7;
            // 
            // txtNewPass
            // 
            this.txtNewPass.Location = new System.Drawing.Point(189, 153);
            this.txtNewPass.Name = "txtNewPass";
            this.txtNewPass.Size = new System.Drawing.Size(416, 26);
            this.txtNewPass.TabIndex = 6;
            // 
            // txtPassword
            // 
            this.txtPassword.Location = new System.Drawing.Point(189, 87);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(416, 26);
            this.txtPassword.TabIndex = 5;
            // 
            // txtUsername
            // 
            this.txtUsername.Location = new System.Drawing.Point(189, 49);
            this.txtUsername.Name = "txtUsername";
            this.txtUsername.Size = new System.Drawing.Size(416, 26);
            this.txtUsername.TabIndex = 4;
            // 
            // lblRepetirClaveNueva
            // 
            this.lblRepetirClaveNueva.AutoSize = true;
            this.lblRepetirClaveNueva.Location = new System.Drawing.Point(31, 198);
            this.lblRepetirClaveNueva.Name = "lblRepetirClaveNueva";
            this.lblRepetirClaveNueva.Size = new System.Drawing.Size(148, 20);
            this.lblRepetirClaveNueva.TabIndex = 3;
            this.lblRepetirClaveNueva.Tag = "password.newpassword.repeat";
            this.lblRepetirClaveNueva.Text = "Repetir clave nueva";
            // 
            // lblClaveNueva
            // 
            this.lblClaveNueva.AutoSize = true;
            this.lblClaveNueva.Location = new System.Drawing.Point(31, 157);
            this.lblClaveNueva.Name = "lblClaveNueva";
            this.lblClaveNueva.Size = new System.Drawing.Size(95, 20);
            this.lblClaveNueva.TabIndex = 2;
            this.lblClaveNueva.Tag = "password.newpassword";
            this.lblClaveNueva.Text = "Clave nueva";
            this.lblClaveNueva.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            this.lblPassword.Location = new System.Drawing.Point(31, 94);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(95, 20);
            this.lblPassword.TabIndex = 1;
            this.lblPassword.Tag = "password";
            this.lblPassword.Text = "Clave actual";
            // 
            // lblNombreUSuario
            // 
            this.lblNombreUSuario.AutoSize = true;
            this.lblNombreUSuario.Location = new System.Drawing.Point(31, 49);
            this.lblNombreUSuario.Name = "lblNombreUSuario";
            this.lblNombreUSuario.Size = new System.Drawing.Size(143, 20);
            this.lblNombreUSuario.TabIndex = 0;
            this.lblNombreUSuario.Tag = "username";
            this.lblNombreUSuario.Text = "Nombre de usuario";
            // 
            // FrmChangePassword
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(752, 407);
            this.Controls.Add(this.gbxChangePassword);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmChangePassword";
            this.ShowIcon = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "FrmChangePassword";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.gbxChangePassword.ResumeLayout(false);
            this.gbxChangePassword.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxChangePassword;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnChangePassword;
        private System.Windows.Forms.TextBox txtNewPassRepeat;
        private System.Windows.Forms.TextBox txtNewPass;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.TextBox txtUsername;
        private System.Windows.Forms.Label lblRepetirClaveNueva;
        private System.Windows.Forms.Label lblClaveNueva;
        private System.Windows.Forms.Label lblPassword;
        private System.Windows.Forms.Label lblNombreUSuario;
    }
}