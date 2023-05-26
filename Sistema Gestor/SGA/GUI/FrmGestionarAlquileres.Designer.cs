
namespace GUI
{
    partial class FrmGestionarAlquileres
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
            this.gbxclientes = new System.Windows.Forms.GroupBox();
            this.dgvClientes = new System.Windows.Forms.DataGridView();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dni = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.apellido = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tel = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnRegistrarCli = new System.Windows.Forms.Button();
            this.btnBuscarCli = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.gbxalquiler = new System.Windows.Forms.GroupBox();
            this.btnCargarReserva = new System.Windows.Forms.Button();
            this.btnBuscarReserva = new System.Windows.Forms.Button();
            this.dgvReservas = new System.Windows.Forms.DataGridView();
            this.idevento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fecha = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descripcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.estado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btncancelar = new System.Windows.Forms.Button();
            this.btnpresupuesto = new System.Windows.Forms.Button();
            this.btnpagos = new System.Windows.Forms.Button();
            this.gbxclientes.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvClientes)).BeginInit();
            this.gbxalquiler.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvReservas)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxclientes
            // 
            this.gbxclientes.Controls.Add(this.dgvClientes);
            this.gbxclientes.Controls.Add(this.btnRegistrarCli);
            this.gbxclientes.Controls.Add(this.btnBuscarCli);
            this.gbxclientes.Controls.Add(this.textBox1);
            this.gbxclientes.Controls.Add(this.label1);
            this.gbxclientes.Location = new System.Drawing.Point(30, 32);
            this.gbxclientes.Name = "gbxclientes";
            this.gbxclientes.Size = new System.Drawing.Size(845, 224);
            this.gbxclientes.TabIndex = 0;
            this.gbxclientes.TabStop = false;
            this.gbxclientes.Text = "Buscar Cliente";
            // 
            // dgvClientes
            // 
            this.dgvClientes.AllowUserToAddRows = false;
            this.dgvClientes.AllowUserToDeleteRows = false;
            this.dgvClientes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvClientes.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.dni,
            this.nombre,
            this.apellido,
            this.tel,
            this.email});
            this.dgvClientes.Location = new System.Drawing.Point(22, 111);
            this.dgvClientes.Name = "dgvClientes";
            this.dgvClientes.ReadOnly = true;
            this.dgvClientes.RowHeadersWidth = 62;
            this.dgvClientes.RowTemplate.Height = 28;
            this.dgvClientes.Size = new System.Drawing.Size(779, 96);
            this.dgvClientes.TabIndex = 4;
            // 
            // id
            // 
            this.id.HeaderText = "ID Cliente";
            this.id.MinimumWidth = 8;
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Width = 150;
            // 
            // dni
            // 
            this.dni.HeaderText = "DNI/CUIT";
            this.dni.MinimumWidth = 8;
            this.dni.Name = "dni";
            this.dni.ReadOnly = true;
            this.dni.Width = 150;
            // 
            // nombre
            // 
            this.nombre.HeaderText = "Nombre";
            this.nombre.MinimumWidth = 8;
            this.nombre.Name = "nombre";
            this.nombre.ReadOnly = true;
            this.nombre.Width = 150;
            // 
            // apellido
            // 
            this.apellido.HeaderText = "Apellido";
            this.apellido.MinimumWidth = 8;
            this.apellido.Name = "apellido";
            this.apellido.ReadOnly = true;
            this.apellido.Width = 150;
            // 
            // tel
            // 
            this.tel.HeaderText = "Telefono";
            this.tel.MinimumWidth = 8;
            this.tel.Name = "tel";
            this.tel.ReadOnly = true;
            this.tel.Width = 150;
            // 
            // email
            // 
            this.email.HeaderText = "E-mail";
            this.email.MinimumWidth = 8;
            this.email.Name = "email";
            this.email.ReadOnly = true;
            this.email.Width = 150;
            // 
            // btnRegistrarCli
            // 
            this.btnRegistrarCli.Location = new System.Drawing.Point(674, 35);
            this.btnRegistrarCli.Name = "btnRegistrarCli";
            this.btnRegistrarCli.Size = new System.Drawing.Size(132, 58);
            this.btnRegistrarCli.TabIndex = 3;
            this.btnRegistrarCli.Text = "Registrar Cliente";
            this.btnRegistrarCli.UseVisualStyleBackColor = true;
            this.btnRegistrarCli.Click += new System.EventHandler(this.btnRegistrarCli_Click);
            // 
            // btnBuscarCli
            // 
            this.btnBuscarCli.Location = new System.Drawing.Point(436, 52);
            this.btnBuscarCli.Name = "btnBuscarCli";
            this.btnBuscarCli.Size = new System.Drawing.Size(123, 31);
            this.btnBuscarCli.TabIndex = 2;
            this.btnBuscarCli.Text = "Buscar";
            this.btnBuscarCli.UseVisualStyleBackColor = true;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(101, 54);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(318, 26);
            this.textBox1.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 60);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(86, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "DNI/CUIT: ";
            // 
            // gbxalquiler
            // 
            this.gbxalquiler.Controls.Add(this.btnpagos);
            this.gbxalquiler.Controls.Add(this.btnpresupuesto);
            this.gbxalquiler.Controls.Add(this.btnCargarReserva);
            this.gbxalquiler.Controls.Add(this.btnBuscarReserva);
            this.gbxalquiler.Controls.Add(this.dgvReservas);
            this.gbxalquiler.Controls.Add(this.textBox2);
            this.gbxalquiler.Controls.Add(this.label2);
            this.gbxalquiler.Location = new System.Drawing.Point(30, 279);
            this.gbxalquiler.Name = "gbxalquiler";
            this.gbxalquiler.Size = new System.Drawing.Size(845, 248);
            this.gbxalquiler.TabIndex = 1;
            this.gbxalquiler.TabStop = false;
            this.gbxalquiler.Text = "Buscar Reserva/Alquiler";
            // 
            // btnCargarReserva
            // 
            this.btnCargarReserva.Location = new System.Drawing.Point(674, 30);
            this.btnCargarReserva.Name = "btnCargarReserva";
            this.btnCargarReserva.Size = new System.Drawing.Size(132, 55);
            this.btnCargarReserva.TabIndex = 6;
            this.btnCargarReserva.Text = "Cargar Reserva";
            this.btnCargarReserva.UseVisualStyleBackColor = true;
            this.btnCargarReserva.Click += new System.EventHandler(this.btnCargarReserva_Click);
            // 
            // btnBuscarReserva
            // 
            this.btnBuscarReserva.Location = new System.Drawing.Point(436, 32);
            this.btnBuscarReserva.Name = "btnBuscarReserva";
            this.btnBuscarReserva.Size = new System.Drawing.Size(123, 31);
            this.btnBuscarReserva.TabIndex = 3;
            this.btnBuscarReserva.Text = "Buscar";
            this.btnBuscarReserva.UseVisualStyleBackColor = true;
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
            this.dgvReservas.Location = new System.Drawing.Point(27, 94);
            this.dgvReservas.Name = "dgvReservas";
            this.dgvReservas.ReadOnly = true;
            this.dgvReservas.RowHeadersWidth = 62;
            this.dgvReservas.RowTemplate.Height = 28;
            this.dgvReservas.Size = new System.Drawing.Size(620, 135);
            this.dgvReservas.TabIndex = 2;
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
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(113, 34);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(306, 26);
            this.textBox2.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 37);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 20);
            this.label2.TabIndex = 0;
            this.label2.Text = "ID Evento:";
            // 
            // btncancelar
            // 
            this.btncancelar.Location = new System.Drawing.Point(30, 553);
            this.btncancelar.Name = "btncancelar";
            this.btncancelar.Size = new System.Drawing.Size(119, 39);
            this.btncancelar.TabIndex = 8;
            this.btncancelar.Text = "Cancelar";
            this.btncancelar.UseVisualStyleBackColor = true;
            this.btncancelar.Click += new System.EventHandler(this.btncancelar_Click);
            // 
            // btnpresupuesto
            // 
            this.btnpresupuesto.Location = new System.Drawing.Point(674, 103);
            this.btnpresupuesto.Name = "btnpresupuesto";
            this.btnpresupuesto.Size = new System.Drawing.Size(132, 55);
            this.btnpresupuesto.TabIndex = 7;
            this.btnpresupuesto.Text = "Generar Presupuesto";
            this.btnpresupuesto.UseVisualStyleBackColor = true;
            // 
            // btnpagos
            // 
            this.btnpagos.Location = new System.Drawing.Point(674, 174);
            this.btnpagos.Name = "btnpagos";
            this.btnpagos.Size = new System.Drawing.Size(132, 55);
            this.btnpagos.TabIndex = 8;
            this.btnpagos.Text = "Gestionar Pagos";
            this.btnpagos.UseVisualStyleBackColor = true;
            // 
            // FrmGestionarAlquileres
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(919, 604);
            this.Controls.Add(this.btncancelar);
            this.Controls.Add(this.gbxalquiler);
            this.Controls.Add(this.gbxclientes);
            this.Name = "FrmGestionarAlquileres";
            this.Text = "GestionarAlquileres";
            this.gbxclientes.ResumeLayout(false);
            this.gbxclientes.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvClientes)).EndInit();
            this.gbxalquiler.ResumeLayout(false);
            this.gbxalquiler.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvReservas)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxclientes;
        private System.Windows.Forms.DataGridView dgvClientes;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn dni;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn apellido;
        private System.Windows.Forms.DataGridViewTextBoxColumn tel;
        private System.Windows.Forms.DataGridViewTextBoxColumn email;
        private System.Windows.Forms.Button btnRegistrarCli;
        private System.Windows.Forms.Button btnBuscarCli;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox gbxalquiler;
        private System.Windows.Forms.Button btncancelar;
        private System.Windows.Forms.Button btnCargarReserva;
        private System.Windows.Forms.Button btnBuscarReserva;
        private System.Windows.Forms.DataGridView dgvReservas;
        private System.Windows.Forms.DataGridViewTextBoxColumn idevento;
        private System.Windows.Forms.DataGridViewTextBoxColumn fecha;
        private System.Windows.Forms.DataGridViewTextBoxColumn descripcion;
        private System.Windows.Forms.DataGridViewTextBoxColumn estado;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnpagos;
        private System.Windows.Forms.Button btnpresupuesto;
    }
}