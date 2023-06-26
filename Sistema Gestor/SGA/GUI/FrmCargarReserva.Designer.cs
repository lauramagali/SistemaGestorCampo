
namespace GUI
{
    partial class FrmCargarReserva
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
            this.gbxEvento = new System.Windows.Forms.GroupBox();
            this.qtyGuest = new System.Windows.Forms.NumericUpDown();
            this.btnAdicionalServ = new System.Windows.Forms.Button();
            this.btnCancelarReserva = new System.Windows.Forms.Button();
            this.btnguardarReserva = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.txtnombreEvento = new System.Windows.Forms.TextBox();
            this.dtpFechaReserva = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbEventType = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gbxEvento.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.qtyGuest)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxEvento
            // 
            this.gbxEvento.Controls.Add(this.qtyGuest);
            this.gbxEvento.Controls.Add(this.btnAdicionalServ);
            this.gbxEvento.Controls.Add(this.btnCancelarReserva);
            this.gbxEvento.Controls.Add(this.btnguardarReserva);
            this.gbxEvento.Controls.Add(this.label4);
            this.gbxEvento.Controls.Add(this.txtnombreEvento);
            this.gbxEvento.Controls.Add(this.dtpFechaReserva);
            this.gbxEvento.Controls.Add(this.label3);
            this.gbxEvento.Controls.Add(this.cmbEventType);
            this.gbxEvento.Controls.Add(this.label2);
            this.gbxEvento.Controls.Add(this.label1);
            this.gbxEvento.Location = new System.Drawing.Point(13, 24);
            this.gbxEvento.Name = "gbxEvento";
            this.gbxEvento.Size = new System.Drawing.Size(727, 297);
            this.gbxEvento.TabIndex = 0;
            this.gbxEvento.TabStop = false;
            this.gbxEvento.Text = "Datos Evento";
            // 
            // qtyGuest
            // 
            this.qtyGuest.Location = new System.Drawing.Point(198, 182);
            this.qtyGuest.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.qtyGuest.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.qtyGuest.Name = "qtyGuest";
            this.qtyGuest.Size = new System.Drawing.Size(120, 26);
            this.qtyGuest.TabIndex = 11;
            this.qtyGuest.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // btnAdicionalServ
            // 
            this.btnAdicionalServ.Location = new System.Drawing.Point(555, 83);
            this.btnAdicionalServ.Name = "btnAdicionalServ";
            this.btnAdicionalServ.Size = new System.Drawing.Size(130, 77);
            this.btnAdicionalServ.TabIndex = 10;
            this.btnAdicionalServ.Text = "Agregar Servicios Adicionales";
            this.btnAdicionalServ.UseVisualStyleBackColor = true;
            this.btnAdicionalServ.Click += new System.EventHandler(this.btnAdicionalServ_Click);
            // 
            // btnCancelarReserva
            // 
            this.btnCancelarReserva.Location = new System.Drawing.Point(227, 236);
            this.btnCancelarReserva.Name = "btnCancelarReserva";
            this.btnCancelarReserva.Size = new System.Drawing.Size(136, 37);
            this.btnCancelarReserva.TabIndex = 9;
            this.btnCancelarReserva.Text = "Cancelar";
            this.btnCancelarReserva.UseVisualStyleBackColor = true;
            this.btnCancelarReserva.Click += new System.EventHandler(this.btnCancelarReserva_Click);
            // 
            // btnguardarReserva
            // 
            this.btnguardarReserva.Location = new System.Drawing.Point(420, 236);
            this.btnguardarReserva.Name = "btnguardarReserva";
            this.btnguardarReserva.Size = new System.Drawing.Size(130, 37);
            this.btnguardarReserva.TabIndex = 8;
            this.btnguardarReserva.Text = "Guardar";
            this.btnguardarReserva.UseVisualStyleBackColor = true;
            this.btnguardarReserva.Click += new System.EventHandler(this.btnguardarReserva_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(47, 182);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(145, 20);
            this.label4.TabIndex = 6;
            this.label4.Text = "Cantidad Invitados:";
            // 
            // txtnombreEvento
            // 
            this.txtnombreEvento.Location = new System.Drawing.Point(198, 36);
            this.txtnombreEvento.Name = "txtnombreEvento";
            this.txtnombreEvento.Size = new System.Drawing.Size(487, 26);
            this.txtnombreEvento.TabIndex = 5;
            // 
            // dtpFechaReserva
            // 
            this.dtpFechaReserva.Location = new System.Drawing.Point(198, 83);
            this.dtpFechaReserva.Name = "dtpFechaReserva";
            this.dtpFechaReserva.Size = new System.Drawing.Size(326, 26);
            this.dtpFechaReserva.TabIndex = 4;
            this.dtpFechaReserva.Value = new System.DateTime(2023, 5, 22, 16, 42, 5, 0);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(47, 135);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(97, 20);
            this.label3.TabIndex = 3;
            this.label3.Text = "Tipo Evento:";
            // 
            // cmbEventType
            // 
            this.cmbEventType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbEventType.Location = new System.Drawing.Point(198, 132);
            this.cmbEventType.Name = "cmbEventType";
            this.cmbEventType.Size = new System.Drawing.Size(326, 28);
            this.cmbEventType.TabIndex = 2;
            this.cmbEventType.SelectedIndexChanged += new System.EventHandler(this.cmbTipoEvento_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(47, 83);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(126, 20);
            this.label2.TabIndex = 1;
            this.label2.Text = "Fecha a realizar:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(47, 39);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(150, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nombre del evento: ";
            // 
            // FrmCargarReserva
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(779, 358);
            this.Controls.Add(this.gbxEvento);
            this.Name = "FrmCargarReserva";
            this.Text = "FrmCargarReserva";
            this.Load += new System.EventHandler(this.FrmCargarReserva_Load);
            this.gbxEvento.ResumeLayout(false);
            this.gbxEvento.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.qtyGuest)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxEvento;
        private System.Windows.Forms.Button btnguardarReserva;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtnombreEvento;
        private System.Windows.Forms.DateTimePicker dtpFechaReserva;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbEventType;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnCancelarReserva;
        private System.Windows.Forms.Button btnAdicionalServ;
        private System.Windows.Forms.NumericUpDown qtyGuest;
    }
}