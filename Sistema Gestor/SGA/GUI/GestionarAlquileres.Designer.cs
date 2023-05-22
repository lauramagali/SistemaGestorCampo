
namespace GUI
{
    partial class GestionarAlquileres
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
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dni = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nombre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.apellido = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tel = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.email = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gbxalquiler = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.idevento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fecha = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descripcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.estado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.gbxpagos = new System.Windows.Forms.GroupBox();
            this.button7 = new System.Windows.Forms.Button();
            this.gbxclientes.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.gbxalquiler.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            this.gbxpagos.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbxclientes
            // 
            this.gbxclientes.Controls.Add(this.dataGridView1);
            this.gbxclientes.Controls.Add(this.button2);
            this.gbxclientes.Controls.Add(this.button1);
            this.gbxclientes.Controls.Add(this.textBox1);
            this.gbxclientes.Controls.Add(this.label1);
            this.gbxclientes.Location = new System.Drawing.Point(30, 32);
            this.gbxclientes.Name = "gbxclientes";
            this.gbxclientes.Size = new System.Drawing.Size(845, 189);
            this.gbxclientes.TabIndex = 0;
            this.gbxclientes.TabStop = false;
            this.gbxclientes.Text = "Buscar Cliente";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(86, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "DNI/CUIT: ";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(98, 34);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(373, 26);
            this.textBox1.TabIndex = 1;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(524, 25);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(123, 40);
            this.button1.TabIndex = 2;
            this.button1.Text = "Buscar";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(683, 25);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(123, 40);
            this.button2.TabIndex = 3;
            this.button2.Text = "Registrar";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.dni,
            this.nombre,
            this.apellido,
            this.tel,
            this.email});
            this.dataGridView1.Location = new System.Drawing.Point(27, 71);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(779, 96);
            this.dataGridView1.TabIndex = 4;
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
            // gbxalquiler
            // 
            this.gbxalquiler.Controls.Add(this.gbxpagos);
            this.gbxalquiler.Controls.Add(this.button6);
            this.gbxalquiler.Controls.Add(this.button3);
            this.gbxalquiler.Controls.Add(this.dataGridView2);
            this.gbxalquiler.Controls.Add(this.textBox2);
            this.gbxalquiler.Controls.Add(this.label2);
            this.gbxalquiler.Location = new System.Drawing.Point(30, 249);
            this.gbxalquiler.Name = "gbxalquiler";
            this.gbxalquiler.Size = new System.Drawing.Size(845, 248);
            this.gbxalquiler.TabIndex = 1;
            this.gbxalquiler.TabStop = false;
            this.gbxalquiler.Text = "Buscar Reserva/Alquiler";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 37);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(149, 20);
            this.label2.TabIndex = 0;
            this.label2.Text = "ID Alquiler/Reserva:";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(165, 34);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(306, 26);
            this.textBox2.TabIndex = 1;
            // 
            // dataGridView2
            // 
            this.dataGridView2.AllowUserToAddRows = false;
            this.dataGridView2.AllowUserToDeleteRows = false;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idevento,
            this.fecha,
            this.descripcion,
            this.estado});
            this.dataGridView2.Location = new System.Drawing.Point(27, 94);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.ReadOnly = true;
            this.dataGridView2.RowHeadersWidth = 62;
            this.dataGridView2.RowTemplate.Height = 28;
            this.dataGridView2.Size = new System.Drawing.Size(620, 135);
            this.dataGridView2.TabIndex = 2;
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
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(523, 27);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(124, 40);
            this.button3.TabIndex = 3;
            this.button3.Text = "Buscar";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(9, 25);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(132, 38);
            this.button4.TabIndex = 4;
            this.button4.Text = "Abonar";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(9, 80);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(132, 38);
            this.button5.TabIndex = 5;
            this.button5.Text = "Cancelar Deuda";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(674, 27);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(132, 40);
            this.button6.TabIndex = 6;
            this.button6.Text = "Cargar Reserva";
            this.button6.UseVisualStyleBackColor = true;
            // 
            // gbxpagos
            // 
            this.gbxpagos.Controls.Add(this.button5);
            this.gbxpagos.Controls.Add(this.button4);
            this.gbxpagos.Location = new System.Drawing.Point(674, 94);
            this.gbxpagos.Name = "gbxpagos";
            this.gbxpagos.Size = new System.Drawing.Size(149, 135);
            this.gbxpagos.TabIndex = 7;
            this.gbxpagos.TabStop = false;
            this.gbxpagos.Text = "Pagos";
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(30, 522);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(119, 39);
            this.button7.TabIndex = 8;
            this.button7.Text = "Cancelar";
            this.button7.UseVisualStyleBackColor = true;
            // 
            // GestionarAlquileres
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(919, 573);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.gbxalquiler);
            this.Controls.Add(this.gbxclientes);
            this.Name = "GestionarAlquileres";
            this.Text = "GestionarAlquileres";
            this.gbxclientes.ResumeLayout(false);
            this.gbxclientes.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.gbxalquiler.ResumeLayout(false);
            this.gbxalquiler.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.gbxpagos.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxclientes;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn dni;
        private System.Windows.Forms.DataGridViewTextBoxColumn nombre;
        private System.Windows.Forms.DataGridViewTextBoxColumn apellido;
        private System.Windows.Forms.DataGridViewTextBoxColumn tel;
        private System.Windows.Forms.DataGridViewTextBoxColumn email;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox gbxalquiler;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.GroupBox gbxpagos;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.DataGridViewTextBoxColumn idevento;
        private System.Windows.Forms.DataGridViewTextBoxColumn fecha;
        private System.Windows.Forms.DataGridViewTextBoxColumn descripcion;
        private System.Windows.Forms.DataGridViewTextBoxColumn estado;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label2;
    }
}