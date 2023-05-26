
namespace GUI
{
    partial class FrmPagos
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
            this.gbxpagos = new System.Windows.Forms.GroupBox();
            this.btnCancelarDeuda = new System.Windows.Forms.Button();
            this.btnAbonar = new System.Windows.Forms.Button();
            this.dgvReservas = new System.Windows.Forms.DataGridView();
            this.idevento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fecha = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descripcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.estado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.gbxpagos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvReservas)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxpagos
            // 
            this.gbxpagos.Controls.Add(this.btnCancelar);
            this.gbxpagos.Controls.Add(this.dgvReservas);
            this.gbxpagos.Controls.Add(this.btnCancelarDeuda);
            this.gbxpagos.Controls.Add(this.btnAbonar);
            this.gbxpagos.Location = new System.Drawing.Point(34, 31);
            this.gbxpagos.Name = "gbxpagos";
            this.gbxpagos.Size = new System.Drawing.Size(736, 248);
            this.gbxpagos.TabIndex = 8;
            this.gbxpagos.TabStop = false;
            this.gbxpagos.Text = "Pagos";
            // 
            // btnCancelarDeuda
            // 
            this.btnCancelarDeuda.Location = new System.Drawing.Point(386, 131);
            this.btnCancelarDeuda.Name = "btnCancelarDeuda";
            this.btnCancelarDeuda.Size = new System.Drawing.Size(132, 38);
            this.btnCancelarDeuda.TabIndex = 5;
            this.btnCancelarDeuda.Text = "Pago Total";
            this.btnCancelarDeuda.UseVisualStyleBackColor = true;
            // 
            // btnAbonar
            // 
            this.btnAbonar.Location = new System.Drawing.Point(556, 131);
            this.btnAbonar.Name = "btnAbonar";
            this.btnAbonar.Size = new System.Drawing.Size(132, 38);
            this.btnAbonar.TabIndex = 4;
            this.btnAbonar.Text = "Abonar Seña";
            this.btnAbonar.UseVisualStyleBackColor = true;
            // 
            // dgvReservas
            // 
            this.dgvReservas.AllowUserToAddRows = false;
            this.dgvReservas.AllowUserToDeleteRows = false;
            this.dgvReservas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvReservas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idevento,
            this.fecha,
            this.descripcion,
            this.estado});
            this.dgvReservas.Location = new System.Drawing.Point(23, 40);
            this.dgvReservas.Name = "dgvReservas";
            this.dgvReservas.ReadOnly = true;
            this.dgvReservas.RowHeadersWidth = 62;
            this.dgvReservas.RowTemplate.Height = 28;
            this.dgvReservas.Size = new System.Drawing.Size(665, 79);
            this.dgvReservas.TabIndex = 6;
            // 
            // idevento
            // 
            this.idevento.HeaderText = "ID Evento";
            this.idevento.MinimumWidth = 8;
            this.idevento.Name = "idevento";
            this.idevento.ReadOnly = true;
            this.idevento.Width = 150;
            // 
            // fecha
            // 
            this.fecha.HeaderText = "Fecha";
            this.fecha.MinimumWidth = 8;
            this.fecha.Name = "fecha";
            this.fecha.ReadOnly = true;
            this.fecha.Width = 150;
            // 
            // descripcion
            // 
            this.descripcion.HeaderText = "Descripcion";
            this.descripcion.MinimumWidth = 8;
            this.descripcion.Name = "descripcion";
            this.descripcion.ReadOnly = true;
            this.descripcion.Width = 150;
            // 
            // estado
            // 
            this.estado.HeaderText = "Estado";
            this.estado.MinimumWidth = 8;
            this.estado.Name = "estado";
            this.estado.ReadOnly = true;
            this.estado.Width = 150;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(23, 193);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(132, 36);
            this.btnCancelar.TabIndex = 7;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            // 
            // FrmPagos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 329);
            this.Controls.Add(this.gbxpagos);
            this.Name = "FrmPagos";
            this.Text = "FrmPagos";
            this.gbxpagos.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvReservas)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxpagos;
        private System.Windows.Forms.Button btnCancelarDeuda;
        private System.Windows.Forms.Button btnAbonar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.DataGridView dgvReservas;
        private System.Windows.Forms.DataGridViewTextBoxColumn idevento;
        private System.Windows.Forms.DataGridViewTextBoxColumn fecha;
        private System.Windows.Forms.DataGridViewTextBoxColumn descripcion;
        private System.Windows.Forms.DataGridViewTextBoxColumn estado;
    }
}