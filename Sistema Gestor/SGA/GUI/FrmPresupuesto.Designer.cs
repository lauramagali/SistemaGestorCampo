
namespace GUI
{
    partial class FrmPresupuesto
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
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.gbxcliente = new System.Windows.Forms.GroupBox();
            this.txtTel = new System.Windows.Forms.Label();
            this.txtEmail = new System.Windows.Forms.Label();
            this.txtcuit = new System.Windows.Forms.Label();
            this.txtcliente = new System.Windows.Forms.Label();
            this.gbxevento = new System.Windows.Forms.GroupBox();
            this.txtTipo = new System.Windows.Forms.Label();
            this.txtinvitados = new System.Windows.Forms.Label();
            this.txtfecha = new System.Windows.Forms.Label();
            this.txtevento = new System.Windows.Forms.Label();
            this.button4 = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtCosto = new System.Windows.Forms.Label();
            this.txtsenia = new System.Windows.Forms.Label();
            this.btnPresupuesto = new System.Windows.Forms.Button();
            this.txtservicioAdicional = new System.Windows.Forms.Label();
            this.txtcostoserv = new System.Windows.Forms.Label();
            this.txtcostosalon = new System.Windows.Forms.Label();
            this.groupBox2.SuspendLayout();
            this.gbxcliente.SuspendLayout();
            this.gbxevento.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.gbxcliente);
            this.groupBox2.Controls.Add(this.gbxevento);
            this.groupBox2.Controls.Add(this.button4);
            this.groupBox2.Controls.Add(this.groupBox3);
            this.groupBox2.Controls.Add(this.btnPresupuesto);
            this.groupBox2.Location = new System.Drawing.Point(40, 28);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(824, 494);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Presupuesto:";
            // 
            // gbxcliente
            // 
            this.gbxcliente.Controls.Add(this.txtTel);
            this.gbxcliente.Controls.Add(this.txtEmail);
            this.gbxcliente.Controls.Add(this.txtcuit);
            this.gbxcliente.Controls.Add(this.txtcliente);
            this.gbxcliente.Location = new System.Drawing.Point(456, 25);
            this.gbxcliente.Name = "gbxcliente";
            this.gbxcliente.Size = new System.Drawing.Size(344, 164);
            this.gbxcliente.TabIndex = 12;
            this.gbxcliente.TabStop = false;
            this.gbxcliente.Text = "Cliente";
            // 
            // txtTel
            // 
            this.txtTel.AutoSize = true;
            this.txtTel.Location = new System.Drawing.Point(26, 130);
            this.txtTel.Name = "txtTel";
            this.txtTel.Size = new System.Drawing.Size(42, 20);
            this.txtTel.TabIndex = 13;
            this.txtTel.Text = "Tel.: ";
            // 
            // txtEmail
            // 
            this.txtEmail.AutoSize = true;
            this.txtEmail.Location = new System.Drawing.Point(26, 98);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(61, 20);
            this.txtEmail.TabIndex = 12;
            this.txtEmail.Text = "E-mail: ";
            // 
            // txtcuit
            // 
            this.txtcuit.AutoSize = true;
            this.txtcuit.Location = new System.Drawing.Point(26, 67);
            this.txtcuit.Name = "txtcuit";
            this.txtcuit.Size = new System.Drawing.Size(86, 20);
            this.txtcuit.TabIndex = 11;
            this.txtcuit.Text = "DNI/CUIT: ";
            // 
            // txtcliente
            // 
            this.txtcliente.AutoSize = true;
            this.txtcliente.Location = new System.Drawing.Point(26, 34);
            this.txtcliente.Name = "txtcliente";
            this.txtcliente.Size = new System.Drawing.Size(73, 20);
            this.txtcliente.TabIndex = 10;
            this.txtcliente.Text = "Nombre: ";
            // 
            // gbxevento
            // 
            this.gbxevento.Controls.Add(this.txtservicioAdicional);
            this.gbxevento.Controls.Add(this.txtTipo);
            this.gbxevento.Controls.Add(this.txtinvitados);
            this.gbxevento.Controls.Add(this.txtfecha);
            this.gbxevento.Controls.Add(this.txtevento);
            this.gbxevento.Location = new System.Drawing.Point(21, 25);
            this.gbxevento.Name = "gbxevento";
            this.gbxevento.Size = new System.Drawing.Size(401, 207);
            this.gbxevento.TabIndex = 11;
            this.gbxevento.TabStop = false;
            this.gbxevento.Text = "Evento";
            // 
            // txtTipo
            // 
            this.txtTipo.AutoSize = true;
            this.txtTipo.Location = new System.Drawing.Point(6, 130);
            this.txtTipo.Name = "txtTipo";
            this.txtTipo.Size = new System.Drawing.Size(47, 20);
            this.txtTipo.TabIndex = 9;
            this.txtTipo.Text = "Tipo: ";
            // 
            // txtinvitados
            // 
            this.txtinvitados.AutoSize = true;
            this.txtinvitados.Location = new System.Drawing.Point(6, 98);
            this.txtinvitados.Name = "txtinvitados";
            this.txtinvitados.Size = new System.Drawing.Size(149, 20);
            this.txtinvitados.TabIndex = 8;
            this.txtinvitados.Text = "Cantidad Invitados: ";
            // 
            // txtfecha
            // 
            this.txtfecha.AutoSize = true;
            this.txtfecha.Location = new System.Drawing.Point(6, 67);
            this.txtfecha.Name = "txtfecha";
            this.txtfecha.Size = new System.Drawing.Size(58, 20);
            this.txtfecha.TabIndex = 7;
            this.txtfecha.Text = "Fecha:";
            // 
            // txtevento
            // 
            this.txtevento.AutoSize = true;
            this.txtevento.Location = new System.Drawing.Point(6, 35);
            this.txtevento.Name = "txtevento";
            this.txtevento.Size = new System.Drawing.Size(67, 20);
            this.txtevento.TabIndex = 6;
            this.txtevento.Text = "Evento: ";
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(246, 259);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(176, 40);
            this.button4.TabIndex = 5;
            this.button4.Text = "Volver";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtcostosalon);
            this.groupBox3.Controls.Add(this.txtcostoserv);
            this.groupBox3.Controls.Add(this.txtCosto);
            this.groupBox3.Controls.Add(this.txtsenia);
            this.groupBox3.Location = new System.Drawing.Point(21, 321);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(779, 151);
            this.groupBox3.TabIndex = 3;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Totales:";
            // 
            // txtCosto
            // 
            this.txtCosto.AutoSize = true;
            this.txtCosto.Location = new System.Drawing.Point(461, 37);
            this.txtCosto.Name = "txtCosto";
            this.txtCosto.Size = new System.Drawing.Size(152, 20);
            this.txtCosto.TabIndex = 2;
            this.txtCosto.Text = "Costo Total Evento: ";
            // 
            // txtsenia
            // 
            this.txtsenia.AutoSize = true;
            this.txtsenia.Location = new System.Drawing.Point(461, 78);
            this.txtsenia.Name = "txtsenia";
            this.txtsenia.Size = new System.Drawing.Size(109, 20);
            this.txtsenia.TabIndex = 1;
            this.txtsenia.Text = "Seña Evento: ";
            // 
            // btnPresupuesto
            // 
            this.btnPresupuesto.Location = new System.Drawing.Point(21, 259);
            this.btnPresupuesto.Name = "btnPresupuesto";
            this.btnPresupuesto.Size = new System.Drawing.Size(190, 40);
            this.btnPresupuesto.TabIndex = 0;
            this.btnPresupuesto.Text = "Generar Presupuesto";
            this.btnPresupuesto.UseVisualStyleBackColor = true;
            this.btnPresupuesto.Click += new System.EventHandler(this.button2_Click);
            // 
            // txtservicioAdicional
            // 
            this.txtservicioAdicional.AutoSize = true;
            this.txtservicioAdicional.Location = new System.Drawing.Point(6, 163);
            this.txtservicioAdicional.Name = "txtservicioAdicional";
            this.txtservicioAdicional.Size = new System.Drawing.Size(165, 20);
            this.txtservicioAdicional.TabIndex = 10;
            this.txtservicioAdicional.Text = "Servicios Adicionales: ";
            // 
            // txtcostoserv
            // 
            this.txtcostoserv.AutoSize = true;
            this.txtcostoserv.Location = new System.Drawing.Point(33, 37);
            this.txtcostoserv.Name = "txtcostoserv";
            this.txtcostoserv.Size = new System.Drawing.Size(211, 20);
            this.txtcostoserv.TabIndex = 3;
            this.txtcostoserv.Text = "Costo Servicios Adicionales: ";
            // 
            // txtcostosalon
            // 
            this.txtcostosalon.AutoSize = true;
            this.txtcostosalon.Location = new System.Drawing.Point(33, 78);
            this.txtcostosalon.Name = "txtcostosalon";
            this.txtcostosalon.Size = new System.Drawing.Size(125, 20);
            this.txtcostosalon.TabIndex = 4;
            this.txtcostosalon.Text = "Costo del Salon:";
            // 
            // FrmPresupuesto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(919, 544);
            this.Controls.Add(this.groupBox2);
            this.Name = "FrmPresupuesto";
            this.Text = "FrmPresupuesto";
            this.Load += new System.EventHandler(this.FrmPresupuesto_Load);
            this.groupBox2.ResumeLayout(false);
            this.gbxcliente.ResumeLayout(false);
            this.gbxcliente.PerformLayout();
            this.gbxevento.ResumeLayout(false);
            this.gbxevento.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label txtCosto;
        private System.Windows.Forms.Label txtsenia;
        private System.Windows.Forms.Button btnPresupuesto;
        private System.Windows.Forms.GroupBox gbxcliente;
        private System.Windows.Forms.Label txtTel;
        private System.Windows.Forms.Label txtEmail;
        private System.Windows.Forms.Label txtcuit;
        private System.Windows.Forms.Label txtcliente;
        private System.Windows.Forms.GroupBox gbxevento;
        private System.Windows.Forms.Label txtinvitados;
        private System.Windows.Forms.Label txtfecha;
        private System.Windows.Forms.Label txtevento;
        private System.Windows.Forms.Label txtTipo;
        private System.Windows.Forms.Label txtservicioAdicional;
        private System.Windows.Forms.Label txtcostosalon;
        private System.Windows.Forms.Label txtcostoserv;
    }
}