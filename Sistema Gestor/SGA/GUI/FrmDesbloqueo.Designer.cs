
namespace GUI
{
    partial class FrmDesbloqueo
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
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnModificar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.cbxUsuario = new System.Windows.Forms.ComboBox();
            this.gbxConfigurarUsuario.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbxConfigurarUsuario
            // 
            this.gbxConfigurarUsuario.Controls.Add(this.btnCancelar);
            this.gbxConfigurarUsuario.Controls.Add(this.btnModificar);
            this.gbxConfigurarUsuario.Controls.Add(this.label1);
            this.gbxConfigurarUsuario.Controls.Add(this.cbxUsuario);
            this.gbxConfigurarUsuario.Location = new System.Drawing.Point(77, 93);
            this.gbxConfigurarUsuario.Name = "gbxConfigurarUsuario";
            this.gbxConfigurarUsuario.Size = new System.Drawing.Size(546, 197);
            this.gbxConfigurarUsuario.TabIndex = 1;
            this.gbxConfigurarUsuario.TabStop = false;
            this.gbxConfigurarUsuario.Tag = "admin.users.usersetup";
            this.gbxConfigurarUsuario.Text = "Administrar Usuario";
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(103, 116);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(185, 36);
            this.btnCancelar.TabIndex = 5;
            this.btnCancelar.Tag = "btn.cancel";
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnModificar
            // 
            this.btnModificar.Location = new System.Drawing.Point(314, 116);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(185, 36);
            this.btnModificar.TabIndex = 2;
            this.btnModificar.Tag = "btn.modif";
            this.btnModificar.Text = "Desbloquear";
            this.btnModificar.UseVisualStyleBackColor = true;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(51, 58);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(68, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Usuario:";
            // 
            // cbxUsuario
            // 
            this.cbxUsuario.FormattingEnabled = true;
            this.cbxUsuario.Location = new System.Drawing.Point(125, 55);
            this.cbxUsuario.Name = "cbxUsuario";
            this.cbxUsuario.Size = new System.Drawing.Size(374, 28);
            this.cbxUsuario.TabIndex = 0;
            // 
            // FrmDesbloqueo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(728, 371);
            this.Controls.Add(this.gbxConfigurarUsuario);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "FrmDesbloqueo";
            this.ShowIcon = false;
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Show;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "FrmDesbloqueo";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.FrmDesbloqueo_Load);
            this.gbxConfigurarUsuario.ResumeLayout(false);
            this.gbxConfigurarUsuario.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxConfigurarUsuario;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbxUsuario;
    }
}