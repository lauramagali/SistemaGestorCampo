
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmGestionarAlquileres));
            this.gbxclientes = new System.Windows.Forms.GroupBox();
            this.dgvCustomers = new System.Windows.Forms.DataGridView();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dni = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombreApe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.direccion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tel = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnRegistrarCli = new System.Windows.Forms.Button();
            this.btnBuscarCli = new System.Windows.Forms.Button();
            this.txtTaxId = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.gbxalquiler = new System.Windows.Forms.GroupBox();
            this.btncancelar = new System.Windows.Forms.Button();
            this.btnpagos = new System.Windows.Forms.Button();
            this.btnpresupuesto = new System.Windows.Forms.Button();
            this.btnCargarReserva = new System.Windows.Forms.Button();
            this.btnBuscarReserva = new System.Windows.Forms.Button();
            this.dgvReservas = new System.Windows.Forms.DataGridView();
            this.txtEventId = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.idevento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descripcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fecha = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.invitados = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tipo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.precio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.preciominimo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.estado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.gbxclientes.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCustomers)).BeginInit();
            this.gbxalquiler.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvReservas)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxclientes
            // 
            this.gbxclientes.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.gbxclientes.BackColor = System.Drawing.SystemColors.Control;
            this.gbxclientes.Controls.Add(this.label3);
            this.gbxclientes.Controls.Add(this.dgvCustomers);
            this.gbxclientes.Controls.Add(this.btnRegistrarCli);
            this.gbxclientes.Controls.Add(this.btnBuscarCli);
            this.gbxclientes.Controls.Add(this.txtTaxId);
            this.gbxclientes.Controls.Add(this.label1);
            this.gbxclientes.Location = new System.Drawing.Point(8, 14);
            this.gbxclientes.Name = "gbxclientes";
            this.gbxclientes.Size = new System.Drawing.Size(1339, 292);
            this.gbxclientes.TabIndex = 0;
            this.gbxclientes.TabStop = false;
            this.gbxclientes.Text = "Buscar Cliente";
            // 
            // dgvCustomers
            // 
            this.dgvCustomers.AllowUserToAddRows = false;
            this.dgvCustomers.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dgvCustomers.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dgvCustomers.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCustomers.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.dni,
            this.nombreApe,
            this.direccion,
            this.tel,
            this.email});
            this.dgvCustomers.Location = new System.Drawing.Point(22, 103);
            this.dgvCustomers.Name = "dgvCustomers";
            this.dgvCustomers.ReadOnly = true;
            this.dgvCustomers.RowHeadersWidth = 62;
            this.dgvCustomers.RowTemplate.Height = 28;
            this.dgvCustomers.Size = new System.Drawing.Size(1148, 139);
            this.dgvCustomers.TabIndex = 4;
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
            // nombreApe
            // 
            this.nombreApe.HeaderText = "Nombre ";
            this.nombreApe.MinimumWidth = 8;
            this.nombreApe.Name = "nombreApe";
            this.nombreApe.ReadOnly = true;
            this.nombreApe.Width = 150;
            // 
            // direccion
            // 
            this.direccion.HeaderText = "Direccion";
            this.direccion.MinimumWidth = 8;
            this.direccion.Name = "direccion";
            this.direccion.ReadOnly = true;
            this.direccion.Width = 150;
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
            this.btnRegistrarCli.Location = new System.Drawing.Point(716, 25);
            this.btnRegistrarCli.Name = "btnRegistrarCli";
            this.btnRegistrarCli.Size = new System.Drawing.Size(132, 58);
            this.btnRegistrarCli.TabIndex = 3;
            this.btnRegistrarCli.Text = "Registrar Cliente";
            this.btnRegistrarCli.UseVisualStyleBackColor = true;
            this.btnRegistrarCli.Click += new System.EventHandler(this.btnRegistrarCli_Click);
            // 
            // btnBuscarCli
            // 
            this.btnBuscarCli.Location = new System.Drawing.Point(561, 25);
            this.btnBuscarCli.Name = "btnBuscarCli";
            this.btnBuscarCli.Size = new System.Drawing.Size(132, 58);
            this.btnBuscarCli.TabIndex = 2;
            this.btnBuscarCli.Text = "Buscar Cliente";
            this.btnBuscarCli.UseVisualStyleBackColor = true;
            this.btnBuscarCli.Click += new System.EventHandler(this.btnBuscarCli_Click);
            // 
            // txtTaxId
            // 
            this.txtTaxId.Location = new System.Drawing.Point(113, 41);
            this.txtTaxId.Name = "txtTaxId";
            this.txtTaxId.Size = new System.Drawing.Size(412, 26);
            this.txtTaxId.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(23, 44);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(86, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "DNI/CUIT: ";
            // 
            // gbxalquiler
            // 
            this.gbxalquiler.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.gbxalquiler.Controls.Add(this.label4);
            this.gbxalquiler.Controls.Add(this.btncancelar);
            this.gbxalquiler.Controls.Add(this.btnpagos);
            this.gbxalquiler.Controls.Add(this.btnpresupuesto);
            this.gbxalquiler.Controls.Add(this.btnCargarReserva);
            this.gbxalquiler.Controls.Add(this.btnBuscarReserva);
            this.gbxalquiler.Controls.Add(this.dgvReservas);
            this.gbxalquiler.Controls.Add(this.txtEventId);
            this.gbxalquiler.Controls.Add(this.label2);
            this.gbxalquiler.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.gbxalquiler.Location = new System.Drawing.Point(8, 312);
            this.gbxalquiler.Name = "gbxalquiler";
            this.gbxalquiler.Size = new System.Drawing.Size(1339, 346);
            this.gbxalquiler.TabIndex = 1;
            this.gbxalquiler.TabStop = false;
            this.gbxalquiler.Text = "Buscar Reserva/Alquiler";
            // 
            // btncancelar
            // 
            this.btncancelar.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btncancelar.Location = new System.Drawing.Point(1115, 272);
            this.btncancelar.Name = "btncancelar";
            this.btncancelar.Size = new System.Drawing.Size(158, 54);
            this.btncancelar.TabIndex = 8;
            this.btncancelar.Text = "Cancelar";
            this.btncancelar.UseVisualStyleBackColor = true;
            this.btncancelar.Click += new System.EventHandler(this.btncancelar_Click);
            // 
            // btnpagos
            // 
            this.btnpagos.Location = new System.Drawing.Point(1022, 31);
            this.btnpagos.Name = "btnpagos";
            this.btnpagos.Size = new System.Drawing.Size(132, 55);
            this.btnpagos.TabIndex = 8;
            this.btnpagos.Text = "Gestionar Pagos";
            this.btnpagos.UseVisualStyleBackColor = true;
            this.btnpagos.Click += new System.EventHandler(this.btnpagos_Click);
            // 
            // btnpresupuesto
            // 
            this.btnpresupuesto.Location = new System.Drawing.Point(867, 31);
            this.btnpresupuesto.Name = "btnpresupuesto";
            this.btnpresupuesto.Size = new System.Drawing.Size(132, 55);
            this.btnpresupuesto.TabIndex = 7;
            this.btnpresupuesto.Text = "Generar Presupuesto";
            this.btnpresupuesto.UseVisualStyleBackColor = true;
            this.btnpresupuesto.Click += new System.EventHandler(this.btnpresupuesto_Click);
            // 
            // btnCargarReserva
            // 
            this.btnCargarReserva.Location = new System.Drawing.Point(716, 31);
            this.btnCargarReserva.Name = "btnCargarReserva";
            this.btnCargarReserva.Size = new System.Drawing.Size(132, 55);
            this.btnCargarReserva.TabIndex = 6;
            this.btnCargarReserva.Text = "Cargar Evento";
            this.btnCargarReserva.UseVisualStyleBackColor = true;
            this.btnCargarReserva.Click += new System.EventHandler(this.btnCargarReserva_Click);
            // 
            // btnBuscarReserva
            // 
            this.btnBuscarReserva.Location = new System.Drawing.Point(561, 29);
            this.btnBuscarReserva.Name = "btnBuscarReserva";
            this.btnBuscarReserva.Size = new System.Drawing.Size(132, 58);
            this.btnBuscarReserva.TabIndex = 3;
            this.btnBuscarReserva.Text = "Buscar Evento";
            this.btnBuscarReserva.UseVisualStyleBackColor = true;
            this.btnBuscarReserva.Click += new System.EventHandler(this.btnBuscarReserva_Click);
            // 
            // dgvReservas
            // 
            this.dgvReservas.AllowUserToAddRows = false;
            this.dgvReservas.AllowUserToDeleteRows = false;
            this.dgvReservas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvReservas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idevento,
            this.descripcion,
            this.fecha,
            this.invitados,
            this.tipo,
            this.precio,
            this.preciominimo,
            this.estado});
            this.dgvReservas.Location = new System.Drawing.Point(22, 107);
            this.dgvReservas.MultiSelect = false;
            this.dgvReservas.Name = "dgvReservas";
            this.dgvReservas.ReadOnly = true;
            this.dgvReservas.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.AutoSizeToDisplayedHeaders;
            this.dgvReservas.RowTemplate.Height = 28;
            this.dgvReservas.Size = new System.Drawing.Size(1251, 135);
            this.dgvReservas.TabIndex = 2;
            // 
            // txtEventId
            // 
            this.txtEventId.Location = new System.Drawing.Point(113, 45);
            this.txtEventId.Name = "txtEventId";
            this.txtEventId.Size = new System.Drawing.Size(412, 26);
            this.txtEventId.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(23, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(84, 20);
            this.label2.TabIndex = 0;
            this.label2.Text = "ID Evento:";
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
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(22, 249);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(397, 20);
            this.label3.TabIndex = 5;
            this.label3.Text = "* Debe seleccionar toda una fila de la grilla para operar.";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(23, 245);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(397, 20);
            this.label4.TabIndex = 9;
            this.label4.Text = "* Debe seleccionar toda una fila de la grilla para operar.";
            // 
            // FrmGestionarAlquileres
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.CancelButton = this.btncancelar;
            this.ClientSize = new System.Drawing.Size(1400, 682);
            this.Controls.Add(this.gbxalquiler);
            this.Controls.Add(this.gbxclientes);
            this.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.Name = "FrmGestionarAlquileres";
            this.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "GestionarAlquileres";
            this.TransparencyKey = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.Load += new System.EventHandler(this.FrmGestionarAlquileres_Load);
            this.gbxclientes.ResumeLayout(false);
            this.gbxclientes.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCustomers)).EndInit();
            this.gbxalquiler.ResumeLayout(false);
            this.gbxalquiler.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvReservas)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxclientes;
        private System.Windows.Forms.DataGridView dgvCustomers;
        private System.Windows.Forms.Button btnRegistrarCli;
        private System.Windows.Forms.Button btnBuscarCli;
        private System.Windows.Forms.TextBox txtTaxId;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox gbxalquiler;
        private System.Windows.Forms.Button btncancelar;
        private System.Windows.Forms.Button btnCargarReserva;
        private System.Windows.Forms.Button btnBuscarReserva;
        private System.Windows.Forms.DataGridView dgvReservas;
        private System.Windows.Forms.TextBox txtEventId;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnpagos;
        private System.Windows.Forms.Button btnpresupuesto;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn dni;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombreApe;
        private System.Windows.Forms.DataGridViewTextBoxColumn direccion;
        private System.Windows.Forms.DataGridViewTextBoxColumn tel;
        private System.Windows.Forms.DataGridViewTextBoxColumn email;
        private System.Windows.Forms.DataGridViewTextBoxColumn idevento;
        private System.Windows.Forms.DataGridViewTextBoxColumn descripcion;
        private System.Windows.Forms.DataGridViewTextBoxColumn fecha;
        private System.Windows.Forms.DataGridViewTextBoxColumn invitados;
        private System.Windows.Forms.DataGridViewTextBoxColumn tipo;
        private System.Windows.Forms.DataGridViewTextBoxColumn precio;
        private System.Windows.Forms.DataGridViewTextBoxColumn preciominimo;
        private System.Windows.Forms.DataGridViewTextBoxColumn estado;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
    }
}