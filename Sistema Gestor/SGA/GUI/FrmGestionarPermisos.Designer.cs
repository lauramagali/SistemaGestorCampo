
namespace GUI
{
    partial class FrmGestionarPermisos
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtfamilia = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btncrearfamilia = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnconffamilia = new System.Windows.Forms.Button();
            this.btnagregarfamilia = new System.Windows.Forms.Button();
            this.gbxacceso = new System.Windows.Forms.GroupBox();
            this.gbxaccesocrear = new System.Windows.Forms.GroupBox();
            this.lblnombreacceso = new System.Windows.Forms.Label();
            this.cbxaccesos = new System.Windows.Forms.ComboBox();
            this.btnguardaracceso = new System.Windows.Forms.Button();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnagregaracceso = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.treeConfigurarRol = new System.Windows.Forms.TreeView();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.btnguadarfamiliaconf = new System.Windows.Forms.Button();
            this.btnquitarfamiliaacceso = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.gbxacceso.SuspendLayout();
            this.gbxaccesocrear.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.groupBox3);
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Location = new System.Drawing.Point(45, 31);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(531, 292);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Gestionar Familias";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btncrearfamilia);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.txtfamilia);
            this.groupBox2.Location = new System.Drawing.Point(6, 48);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(499, 100);
            this.groupBox2.TabIndex = 0;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Crear";
            // 
            // txtfamilia
            // 
            this.txtfamilia.Location = new System.Drawing.Point(94, 42);
            this.txtfamilia.Name = "txtfamilia";
            this.txtfamilia.Size = new System.Drawing.Size(242, 26);
            this.txtfamilia.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(73, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Nombre: ";
            // 
            // btncrearfamilia
            // 
            this.btncrearfamilia.Location = new System.Drawing.Point(365, 39);
            this.btncrearfamilia.Name = "btncrearfamilia";
            this.btncrearfamilia.Size = new System.Drawing.Size(114, 33);
            this.btncrearfamilia.TabIndex = 2;
            this.btncrearfamilia.Text = "Guardar";
            this.btncrearfamilia.UseVisualStyleBackColor = true;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btnagregarfamilia);
            this.groupBox3.Controls.Add(this.btnconffamilia);
            this.groupBox3.Controls.Add(this.label2);
            this.groupBox3.Controls.Add(this.comboBox1);
            this.groupBox3.Location = new System.Drawing.Point(6, 155);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(499, 121);
            this.groupBox3.TabIndex = 1;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Configurar";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(96, 47);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(242, 28);
            this.comboBox1.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(18, 50);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(63, 20);
            this.label2.TabIndex = 1;
            this.label2.Text = "Familia:";
            // 
            // btnconffamilia
            // 
            this.btnconffamilia.Location = new System.Drawing.Point(365, 26);
            this.btnconffamilia.Name = "btnconffamilia";
            this.btnconffamilia.Size = new System.Drawing.Size(114, 34);
            this.btnconffamilia.TabIndex = 2;
            this.btnconffamilia.Text = "Configurar";
            this.btnconffamilia.UseVisualStyleBackColor = true;
            // 
            // btnagregarfamilia
            // 
            this.btnagregarfamilia.Location = new System.Drawing.Point(365, 67);
            this.btnagregarfamilia.Name = "btnagregarfamilia";
            this.btnagregarfamilia.Size = new System.Drawing.Size(114, 29);
            this.btnagregarfamilia.TabIndex = 3;
            this.btnagregarfamilia.Text = "Agregar >>";
            this.btnagregarfamilia.UseVisualStyleBackColor = true;
            // 
            // gbxacceso
            // 
            this.gbxacceso.Controls.Add(this.groupBox4);
            this.gbxacceso.Controls.Add(this.gbxaccesocrear);
            this.gbxacceso.Location = new System.Drawing.Point(45, 350);
            this.gbxacceso.Name = "gbxacceso";
            this.gbxacceso.Size = new System.Drawing.Size(531, 289);
            this.gbxacceso.TabIndex = 1;
            this.gbxacceso.TabStop = false;
            this.gbxacceso.Text = "Gestionar Accesos";
            // 
            // gbxaccesocrear
            // 
            this.gbxaccesocrear.Controls.Add(this.label4);
            this.gbxaccesocrear.Controls.Add(this.textBox1);
            this.gbxaccesocrear.Controls.Add(this.btnguardaracceso);
            this.gbxaccesocrear.Controls.Add(this.cbxaccesos);
            this.gbxaccesocrear.Controls.Add(this.lblnombreacceso);
            this.gbxaccesocrear.Location = new System.Drawing.Point(6, 37);
            this.gbxaccesocrear.Name = "gbxaccesocrear";
            this.gbxaccesocrear.Size = new System.Drawing.Size(499, 140);
            this.gbxaccesocrear.TabIndex = 0;
            this.gbxaccesocrear.TabStop = false;
            this.gbxaccesocrear.Text = "Crear";
            // 
            // lblnombreacceso
            // 
            this.lblnombreacceso.AutoSize = true;
            this.lblnombreacceso.Location = new System.Drawing.Point(15, 39);
            this.lblnombreacceso.Name = "lblnombreacceso";
            this.lblnombreacceso.Size = new System.Drawing.Size(69, 20);
            this.lblnombreacceso.TabIndex = 0;
            this.lblnombreacceso.Text = "Nombre:";
            // 
            // cbxaccesos
            // 
            this.cbxaccesos.FormattingEnabled = true;
            this.cbxaccesos.Location = new System.Drawing.Point(94, 83);
            this.cbxaccesos.Name = "cbxaccesos";
            this.cbxaccesos.Size = new System.Drawing.Size(242, 28);
            this.cbxaccesos.TabIndex = 1;
            // 
            // btnguardaracceso
            // 
            this.btnguardaracceso.Location = new System.Drawing.Point(365, 55);
            this.btnguardaracceso.Name = "btnguardaracceso";
            this.btnguardaracceso.Size = new System.Drawing.Size(114, 34);
            this.btnguardaracceso.TabIndex = 2;
            this.btnguardaracceso.Text = "Guardar";
            this.btnguardaracceso.UseVisualStyleBackColor = true;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.btnagregaracceso);
            this.groupBox4.Controls.Add(this.label3);
            this.groupBox4.Controls.Add(this.comboBox2);
            this.groupBox4.Location = new System.Drawing.Point(6, 183);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(499, 73);
            this.groupBox4.TabIndex = 1;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Asignar";
            // 
            // comboBox2
            // 
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.Location = new System.Drawing.Point(95, 30);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(243, 28);
            this.comboBox2.TabIndex = 0;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(15, 33);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 20);
            this.label3.TabIndex = 1;
            this.label3.Text = "Acceso:";
            // 
            // btnagregaracceso
            // 
            this.btnagregaracceso.Location = new System.Drawing.Point(365, 25);
            this.btnagregaracceso.Name = "btnagregaracceso";
            this.btnagregaracceso.Size = new System.Drawing.Size(114, 33);
            this.btnagregaracceso.TabIndex = 2;
            this.btnagregaracceso.Text = "Agregar >>";
            this.btnagregaracceso.UseVisualStyleBackColor = true;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(95, 39);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(241, 26);
            this.textBox1.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(15, 86);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(70, 20);
            this.label4.TabIndex = 4;
            this.label4.Text = "Permiso:";
            // 
            // treeConfigurarRol
            // 
            this.treeConfigurarRol.Location = new System.Drawing.Point(29, 35);
            this.treeConfigurarRol.Name = "treeConfigurarRol";
            this.treeConfigurarRol.Size = new System.Drawing.Size(253, 472);
            this.treeConfigurarRol.TabIndex = 2;
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.btnquitarfamiliaacceso);
            this.groupBox5.Controls.Add(this.btnguadarfamiliaconf);
            this.groupBox5.Controls.Add(this.treeConfigurarRol);
            this.groupBox5.Location = new System.Drawing.Point(598, 31);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(302, 608);
            this.groupBox5.TabIndex = 3;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Configurar Familia";
            // 
            // btnguadarfamiliaconf
            // 
            this.btnguadarfamiliaconf.Location = new System.Drawing.Point(150, 527);
            this.btnguadarfamiliaconf.Name = "btnguadarfamiliaconf";
            this.btnguadarfamiliaconf.Size = new System.Drawing.Size(132, 28);
            this.btnguadarfamiliaconf.TabIndex = 3;
            this.btnguadarfamiliaconf.Text = "Guardar Familia";
            this.btnguadarfamiliaconf.UseVisualStyleBackColor = true;
            // 
            // btnquitarfamiliaacceso
            // 
            this.btnquitarfamiliaacceso.Location = new System.Drawing.Point(29, 527);
            this.btnquitarfamiliaacceso.Name = "btnquitarfamiliaacceso";
            this.btnquitarfamiliaacceso.Size = new System.Drawing.Size(114, 28);
            this.btnquitarfamiliaacceso.TabIndex = 4;
            this.btnquitarfamiliaacceso.Text = "Quitar <<";
            this.btnquitarfamiliaacceso.UseVisualStyleBackColor = true;
            // 
            // FrmGestionarPermisos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(932, 651);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.gbxacceso);
            this.Controls.Add(this.groupBox1);
            this.Name = "FrmGestionarPermisos";
            this.Text = "FrmGestionarPermisos";
            this.Load += new System.EventHandler(this.FrmGestionarPermisos_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.gbxacceso.ResumeLayout(false);
            this.gbxaccesocrear.ResumeLayout(false);
            this.gbxaccesocrear.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox5.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnagregarfamilia;
        private System.Windows.Forms.Button btnconffamilia;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btncrearfamilia;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtfamilia;
        private System.Windows.Forms.GroupBox gbxacceso;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Button btnagregaracceso;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox comboBox2;
        private System.Windows.Forms.GroupBox gbxaccesocrear;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button btnguardaracceso;
        private System.Windows.Forms.ComboBox cbxaccesos;
        private System.Windows.Forms.Label lblnombreacceso;
        private System.Windows.Forms.TreeView treeConfigurarRol;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.Button btnguadarfamiliaconf;
        private System.Windows.Forms.Button btnquitarfamiliaacceso;
    }
}