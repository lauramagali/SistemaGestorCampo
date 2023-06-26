
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
            this.dgvPagos = new System.Windows.Forms.DataGridView();
            this.idevento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descripcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fecha = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.invitados = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.precio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.preciominimo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.estado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnCancelarDeuda = new System.Windows.Forms.Button();
            this.btnAbonar = new System.Windows.Forms.Button();
            this.gbxpagos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPagos)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxpagos
            // 
            this.gbxpagos.Controls.Add(this.dgvPagos);
            this.gbxpagos.Controls.Add(this.btnCancelar);
            this.gbxpagos.Controls.Add(this.btnCancelarDeuda);
            this.gbxpagos.Controls.Add(this.btnAbonar);
            this.gbxpagos.Location = new System.Drawing.Point(34, 31);
            this.gbxpagos.Name = "gbxpagos";
            this.gbxpagos.Size = new System.Drawing.Size(1020, 248);
            this.gbxpagos.TabIndex = 8;
            this.gbxpagos.TabStop = false;
            this.gbxpagos.Text = "Pagos";
            // 
            // dgvPagos
            // 
            this.dgvPagos.AllowUserToAddRows = false;
            this.dgvPagos.AllowUserToDeleteRows = false;
            this.dgvPagos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPagos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idevento,
            this.descripcion,
            this.fecha,
            this.invitados,
            this.tipo,
            this.precio,
            this.preciominimo,
            this.estado});
            this.dgvPagos.Location = new System.Drawing.Point(33, 52);
            this.dgvPagos.MultiSelect = false;
            this.dgvPagos.Name = "dgvPagos";
            this.dgvPagos.ReadOnly = true;
            this.dgvPagos.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToDisplayedHeaders;
            this.dgvPagos.RowTemplate.Height = 28;
            this.dgvPagos.Size = new System.Drawing.Size(958, 100);
            this.dgvPagos.TabIndex = 8;
            // 
            // idevento
            // 
            this.idevento.HeaderText = "ID Evento";
            this.idevento.MinimumWidth = 8;
            this.idevento.Name = "idevento";
            this.idevento.ReadOnly = true;
            this.idevento.Width = 150;
            // 
            // descripcion
            // 
            this.descripcion.HeaderText = "Descripcion";
            this.descripcion.MinimumWidth = 8;
            this.descripcion.Name = "descripcion";
            this.descripcion.ReadOnly = true;
            this.descripcion.Width = 150;
            // 
            // fecha
            // 
            this.fecha.HeaderText = "Fecha";
            this.fecha.MinimumWidth = 8;
            this.fecha.Name = "fecha";
            this.fecha.ReadOnly = true;
            this.fecha.Width = 150;
            // 
            // invitados
            // 
            this.invitados.HeaderText = "NºInvitados";
            this.invitados.MinimumWidth = 8;
            this.invitados.Name = "invitados";
            this.invitados.ReadOnly = true;
            this.invitados.Width = 150;
            // 
            // tipo
            // 
            this.tipo.HeaderText = "Tipo de Evento";
            this.tipo.MinimumWidth = 8;
            this.tipo.Name = "tipo";
            this.tipo.ReadOnly = true;
            this.tipo.Width = 150;
            // 
            // precio
            // 
            this.precio.HeaderText = "Costo";
            this.precio.MinimumWidth = 8;
            this.precio.Name = "precio";
            this.precio.ReadOnly = true;
            this.precio.Width = 150;
            // 
            // preciominimo
            // 
            this.preciominimo.HeaderText = "Seña";
            this.preciominimo.MinimumWidth = 8;
            this.preciominimo.Name = "preciominimo";
            this.preciominimo.ReadOnly = true;
            this.preciominimo.Width = 150;
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
            this.btnCancelar.Location = new System.Drawing.Point(859, 186);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(132, 36);
            this.btnCancelar.TabIndex = 7;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnCancelarDeuda
            // 
            this.btnCancelarDeuda.Location = new System.Drawing.Point(33, 184);
            this.btnCancelarDeuda.Name = "btnCancelarDeuda";
            this.btnCancelarDeuda.Size = new System.Drawing.Size(132, 38);
            this.btnCancelarDeuda.TabIndex = 5;
            this.btnCancelarDeuda.Text = "Pago Total";
            this.btnCancelarDeuda.UseVisualStyleBackColor = true;
            this.btnCancelarDeuda.Visible = false;
            this.btnCancelarDeuda.Click += new System.EventHandler(this.btnCancelarDeuda_Click);
            // 
            // btnAbonar
            // 
            this.btnAbonar.Location = new System.Drawing.Point(203, 184);
            this.btnAbonar.Name = "btnAbonar";
            this.btnAbonar.Size = new System.Drawing.Size(132, 38);
            this.btnAbonar.TabIndex = 4;
            this.btnAbonar.Text = "Abonar Seña";
            this.btnAbonar.UseVisualStyleBackColor = true;
            this.btnAbonar.Visible = false;
            this.btnAbonar.Click += new System.EventHandler(this.btnAbonar_Click_1);
            // 
            // FrmPagos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1091, 322);
            this.Controls.Add(this.gbxpagos);
            this.Name = "FrmPagos";
            this.Text = "FrmPagos";
            this.gbxpagos.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvPagos)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxpagos;
        private System.Windows.Forms.Button btnCancelarDeuda;
        private System.Windows.Forms.Button btnAbonar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.DataGridView dgvPagos;
        private System.Windows.Forms.DataGridViewTextBoxColumn idevento;
        private System.Windows.Forms.DataGridViewTextBoxColumn descripcion;
        private System.Windows.Forms.DataGridViewTextBoxColumn fecha;
        private System.Windows.Forms.DataGridViewTextBoxColumn invitados;
        private System.Windows.Forms.DataGridViewTextBoxColumn tipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn precio;
        private System.Windows.Forms.DataGridViewTextBoxColumn preciominimo;
        private System.Windows.Forms.DataGridViewTextBoxColumn estado;
    }
}