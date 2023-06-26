
namespace GUI
{
    partial class FrmServicios
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
            this.gbxservicios = new System.Windows.Forms.GroupBox();
            this.button4 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.dgvServiciosReserva = new System.Windows.Forms.DataGridView();
            this.dgvServicios = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            this.qtyservicio = new System.Windows.Forms.NumericUpDown();
            this.idservicio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.precio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.idservicioseleccionado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombreseleccionado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.precioseleccionado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.qty = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.gbxservicios.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvServiciosReserva)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvServicios)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtyservicio)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxservicios
            // 
            this.gbxservicios.Controls.Add(this.label4);
            this.gbxservicios.Controls.Add(this.label3);
            this.gbxservicios.Controls.Add(this.qtyservicio);
            this.gbxservicios.Controls.Add(this.label2);
            this.gbxservicios.Controls.Add(this.button4);
            this.gbxservicios.Controls.Add(this.button3);
            this.gbxservicios.Controls.Add(this.label1);
            this.gbxservicios.Controls.Add(this.button2);
            this.gbxservicios.Controls.Add(this.button1);
            this.gbxservicios.Controls.Add(this.dgvServiciosReserva);
            this.gbxservicios.Controls.Add(this.dgvServicios);
            this.gbxservicios.Location = new System.Drawing.Point(44, 35);
            this.gbxservicios.Name = "gbxservicios";
            this.gbxservicios.Size = new System.Drawing.Size(861, 534);
            this.gbxservicios.TabIndex = 0;
            this.gbxservicios.TabStop = false;
            this.gbxservicios.Text = "Seleccione los Servicios que desa agregar: ";
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(512, 477);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(132, 40);
            this.button4.TabIndex = 6;
            this.button4.Text = "Cancelar";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(706, 477);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(125, 40);
            this.button3.TabIndex = 5;
            this.button3.Text = "Guardar";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 245);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(184, 20);
            this.label1.TabIndex = 4;
            this.label1.Text = "Servicios Seleccionados:";
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(706, 339);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(124, 48);
            this.button2.TabIndex = 3;
            this.button2.Text = "Quitar";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(696, 104);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(124, 46);
            this.button1.TabIndex = 2;
            this.button1.Text = "Agregar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // dgvServiciosReserva
            // 
            this.dgvServiciosReserva.AllowUserToAddRows = false;
            this.dgvServiciosReserva.AllowUserToDeleteRows = false;
            this.dgvServiciosReserva.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvServiciosReserva.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idservicioseleccionado,
            this.nombreseleccionado,
            this.precioseleccionado,
            this.qty});
            this.dgvServiciosReserva.Location = new System.Drawing.Point(25, 277);
            this.dgvServiciosReserva.Name = "dgvServiciosReserva";
            this.dgvServiciosReserva.ReadOnly = true;
            this.dgvServiciosReserva.RowHeadersWidth = 62;
            this.dgvServiciosReserva.RowTemplate.Height = 28;
            this.dgvServiciosReserva.Size = new System.Drawing.Size(652, 173);
            this.dgvServiciosReserva.TabIndex = 1;
            // 
            // dgvServicios
            // 
            this.dgvServicios.AllowUserToAddRows = false;
            this.dgvServicios.AllowUserToDeleteRows = false;
            this.dgvServicios.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvServicios.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idservicio,
            this.nombre,
            this.precio});
            this.dgvServicios.Location = new System.Drawing.Point(25, 47);
            this.dgvServicios.Name = "dgvServicios";
            this.dgvServicios.ReadOnly = true;
            this.dgvServicios.RowHeadersWidth = 62;
            this.dgvServicios.RowTemplate.Height = 28;
            this.dgvServicios.Size = new System.Drawing.Size(554, 154);
            this.dgvServicios.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(613, 62);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 20);
            this.label2.TabIndex = 8;
            this.label2.Text = "Cantidad:";
            // 
            // qtyservicio
            // 
            this.qtyservicio.Location = new System.Drawing.Point(696, 60);
            this.qtyservicio.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.qtyservicio.Name = "qtyservicio";
            this.qtyservicio.Size = new System.Drawing.Size(124, 26);
            this.qtyservicio.TabIndex = 9;
            // 
            // idservicio
            // 
            this.idservicio.HeaderText = "ID Servicio";
            this.idservicio.MinimumWidth = 8;
            this.idservicio.Name = "idservicio";
            this.idservicio.ReadOnly = true;
            this.idservicio.Width = 150;
            // 
            // nombre
            // 
            this.nombre.HeaderText = "Nombre";
            this.nombre.MinimumWidth = 8;
            this.nombre.Name = "nombre";
            this.nombre.ReadOnly = true;
            this.nombre.Width = 150;
            // 
            // precio
            // 
            this.precio.HeaderText = "Precio";
            this.precio.MinimumWidth = 8;
            this.precio.Name = "precio";
            this.precio.ReadOnly = true;
            this.precio.Width = 150;
            // 
            // idservicioseleccionado
            // 
            this.idservicioseleccionado.HeaderText = "ID Servicio";
            this.idservicioseleccionado.MinimumWidth = 8;
            this.idservicioseleccionado.Name = "idservicioseleccionado";
            this.idservicioseleccionado.ReadOnly = true;
            this.idservicioseleccionado.Width = 150;
            // 
            // nombreseleccionado
            // 
            this.nombreseleccionado.HeaderText = "Nombre";
            this.nombreseleccionado.MinimumWidth = 8;
            this.nombreseleccionado.Name = "nombreseleccionado";
            this.nombreseleccionado.ReadOnly = true;
            this.nombreseleccionado.Width = 150;
            // 
            // precioseleccionado
            // 
            this.precioseleccionado.HeaderText = "Precio";
            this.precioseleccionado.MinimumWidth = 8;
            this.precioseleccionado.Name = "precioseleccionado";
            this.precioseleccionado.ReadOnly = true;
            this.precioseleccionado.Width = 150;
            // 
            // qty
            // 
            this.qty.HeaderText = "Cantidad";
            this.qty.MinimumWidth = 8;
            this.qty.Name = "qty";
            this.qty.ReadOnly = true;
            this.qty.Width = 150;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(29, 209);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(323, 20);
            this.label3.TabIndex = 10;
            this.label3.Text = "* Debe seleccionar toda una fila para operar.";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(29, 462);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(323, 20);
            this.label4.TabIndex = 11;
            this.label4.Text = "* Debe seleccionar toda una fila para operar.";
            // 
            // FrmServicios
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(944, 593);
            this.Controls.Add(this.gbxservicios);
            this.Name = "FrmServicios";
            this.Text = "FrmServicios";
            this.Load += new System.EventHandler(this.FrmServicios_Load);
            this.gbxservicios.ResumeLayout(false);
            this.gbxservicios.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvServiciosReserva)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvServicios)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtyservicio)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxservicios;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridView dgvServiciosReserva;
        private System.Windows.Forms.DataGridView dgvServicios;
        private System.Windows.Forms.NumericUpDown qtyservicio;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridViewTextBoxColumn idservicioseleccionado;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombreseleccionado;
        private System.Windows.Forms.DataGridViewTextBoxColumn precioseleccionado;
        private System.Windows.Forms.DataGridViewTextBoxColumn qty;
        private System.Windows.Forms.DataGridViewTextBoxColumn idservicio;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn precio;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
    }
}