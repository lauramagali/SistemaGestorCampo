
namespace GUI
{
    partial class FrmInicio
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmInicio));
            this.menuInicio = new System.Windows.Forms.MenuStrip();
            this.administradorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.admnistrarUsuariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.crearModificarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.desbloquearToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.admnistrarPermisosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.CrearModificarUsuariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.asignarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.maestroToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.proveedoresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.serviciosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.clientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuUsuario = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarSesionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cambiarClaveToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cambiarIdiomaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.alquilerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reservasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.organizarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reporteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ayudaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuInicio.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuInicio
            // 
            this.menuInicio.GripMargin = new System.Windows.Forms.Padding(2, 2, 0, 2);
            this.menuInicio.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.menuInicio.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.administradorToolStripMenuItem,
            this.maestroToolStripMenuItem,
            this.mnuUsuario,
            this.alquilerToolStripMenuItem,
            this.organizarToolStripMenuItem,
            this.reporteToolStripMenuItem,
            this.ayudaToolStripMenuItem});
            this.menuInicio.Location = new System.Drawing.Point(0, 0);
            this.menuInicio.Name = "menuInicio";
            this.menuInicio.Size = new System.Drawing.Size(886, 33);
            this.menuInicio.TabIndex = 0;
            this.menuInicio.Text = "menuStrip1";
            // 
            // administradorToolStripMenuItem
            // 
            this.administradorToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.admnistrarUsuariosToolStripMenuItem,
            this.admnistrarPermisosToolStripMenuItem});
            this.administradorToolStripMenuItem.Name = "administradorToolStripMenuItem";
            this.administradorToolStripMenuItem.Size = new System.Drawing.Size(87, 29);
            this.administradorToolStripMenuItem.Text = "ADMIN";
            // 
            // admnistrarUsuariosToolStripMenuItem
            // 
            this.admnistrarUsuariosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.crearModificarToolStripMenuItem,
            this.desbloquearToolStripMenuItem1});
            this.admnistrarUsuariosToolStripMenuItem.Name = "admnistrarUsuariosToolStripMenuItem";
            this.admnistrarUsuariosToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.admnistrarUsuariosToolStripMenuItem.Text = "Usuarios";
            // 
            // crearModificarToolStripMenuItem
            // 
            this.crearModificarToolStripMenuItem.Name = "crearModificarToolStripMenuItem";
            this.crearModificarToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.crearModificarToolStripMenuItem.Tag = "mnu.usu.crearmod";
            this.crearModificarToolStripMenuItem.Text = "Crear";
            this.crearModificarToolStripMenuItem.Click += new System.EventHandler(this.crearModificarToolStripMenuItem_Click);
            // 
            // desbloquearToolStripMenuItem1
            // 
            this.desbloquearToolStripMenuItem1.Name = "desbloquearToolStripMenuItem1";
            this.desbloquearToolStripMenuItem1.Size = new System.Drawing.Size(270, 34);
            this.desbloquearToolStripMenuItem1.Tag = "submnu.usu.desbloquear";
            this.desbloquearToolStripMenuItem1.Text = "Desbloquear";
            this.desbloquearToolStripMenuItem1.Click += new System.EventHandler(this.desbloquearToolStripMenuItem1_Click);
            // 
            // admnistrarPermisosToolStripMenuItem
            // 
            this.admnistrarPermisosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.CrearModificarUsuariosToolStripMenuItem,
            this.asignarToolStripMenuItem});
            this.admnistrarPermisosToolStripMenuItem.Name = "admnistrarPermisosToolStripMenuItem";
            this.admnistrarPermisosToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.admnistrarPermisosToolStripMenuItem.Text = "Perfiles";
            // 
            // CrearModificarUsuariosToolStripMenuItem
            // 
            this.CrearModificarUsuariosToolStripMenuItem.Name = "CrearModificarUsuariosToolStripMenuItem";
            this.CrearModificarUsuariosToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.CrearModificarUsuariosToolStripMenuItem.Tag = "submnu.usu.crearmodifica";
            this.CrearModificarUsuariosToolStripMenuItem.Text = "Crear/Modificar";
            // 
            // asignarToolStripMenuItem
            // 
            this.asignarToolStripMenuItem.Name = "asignarToolStripMenuItem";
            this.asignarToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.asignarToolStripMenuItem.Tag = "submnu.per.asignar";
            this.asignarToolStripMenuItem.Text = "Asignar";
            // 
            // maestroToolStripMenuItem
            // 
            this.maestroToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.proveedoresToolStripMenuItem,
            this.serviciosToolStripMenuItem,
            this.clientesToolStripMenuItem});
            this.maestroToolStripMenuItem.Name = "maestroToolStripMenuItem";
            this.maestroToolStripMenuItem.Size = new System.Drawing.Size(119, 29);
            this.maestroToolStripMenuItem.Tag = "mnu.maestros";
            this.maestroToolStripMenuItem.Text = "MAESTROS";
            this.maestroToolStripMenuItem.ToolTipText = "Maestros";
            // 
            // proveedoresToolStripMenuItem
            // 
            this.proveedoresToolStripMenuItem.Name = "proveedoresToolStripMenuItem";
            this.proveedoresToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.proveedoresToolStripMenuItem.Text = "Proveedores";
            // 
            // serviciosToolStripMenuItem
            // 
            this.serviciosToolStripMenuItem.Name = "serviciosToolStripMenuItem";
            this.serviciosToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.serviciosToolStripMenuItem.Text = "Servicios";
            // 
            // clientesToolStripMenuItem
            // 
            this.clientesToolStripMenuItem.Name = "clientesToolStripMenuItem";
            this.clientesToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.clientesToolStripMenuItem.Text = "Clientes";
            // 
            // mnuUsuario
            // 
            this.mnuUsuario.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cerrarSesionToolStripMenuItem,
            this.cambiarClaveToolStripMenuItem,
            this.cambiarIdiomaToolStripMenuItem});
            this.mnuUsuario.Name = "mnuUsuario";
            this.mnuUsuario.Size = new System.Drawing.Size(104, 29);
            this.mnuUsuario.Tag = "mnu.usuario";
            this.mnuUsuario.Text = "USUARIO";
            this.mnuUsuario.ToolTipText = "Usuario";
            // 
            // cerrarSesionToolStripMenuItem
            // 
            this.cerrarSesionToolStripMenuItem.Name = "cerrarSesionToolStripMenuItem";
            this.cerrarSesionToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.cerrarSesionToolStripMenuItem.Text = "Logout";
            this.cerrarSesionToolStripMenuItem.Click += new System.EventHandler(this.cerrarSesionToolStripMenuItem_Click);
            // 
            // cambiarClaveToolStripMenuItem
            // 
            this.cambiarClaveToolStripMenuItem.Name = "cambiarClaveToolStripMenuItem";
            this.cambiarClaveToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.cambiarClaveToolStripMenuItem.Text = "Cambiar Clave";
            this.cambiarClaveToolStripMenuItem.Click += new System.EventHandler(this.cambiarClaveToolStripMenuItem_Click);
            // 
            // cambiarIdiomaToolStripMenuItem
            // 
            this.cambiarIdiomaToolStripMenuItem.Name = "cambiarIdiomaToolStripMenuItem";
            this.cambiarIdiomaToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.cambiarIdiomaToolStripMenuItem.Text = "Cambiar Idioma";
            // 
            // alquilerToolStripMenuItem
            // 
            this.alquilerToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.reservasToolStripMenuItem});
            this.alquilerToolStripMenuItem.Name = "alquilerToolStripMenuItem";
            this.alquilerToolStripMenuItem.Size = new System.Drawing.Size(126, 29);
            this.alquilerToolStripMenuItem.Tag = "mnu.alquiler";
            this.alquilerToolStripMenuItem.Text = "ALQUILERES";
            // 
            // reservasToolStripMenuItem
            // 
            this.reservasToolStripMenuItem.Name = "reservasToolStripMenuItem";
            this.reservasToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.reservasToolStripMenuItem.Text = "Gestionar";
            this.reservasToolStripMenuItem.Click += new System.EventHandler(this.reservasToolStripMenuItem_Click);
            // 
            // organizarToolStripMenuItem
            // 
            this.organizarToolStripMenuItem.Name = "organizarToolStripMenuItem";
            this.organizarToolStripMenuItem.Size = new System.Drawing.Size(128, 29);
            this.organizarToolStripMenuItem.Tag = "mnu.organizar";
            this.organizarToolStripMenuItem.Text = "ORGANIZAR";
            this.organizarToolStripMenuItem.ToolTipText = "Organizar";
            // 
            // reporteToolStripMenuItem
            // 
            this.reporteToolStripMenuItem.Name = "reporteToolStripMenuItem";
            this.reporteToolStripMenuItem.Size = new System.Drawing.Size(110, 29);
            this.reporteToolStripMenuItem.Tag = "mnu.reportes";
            this.reporteToolStripMenuItem.Text = "REPORTES";
            this.reporteToolStripMenuItem.ToolTipText = "Reportes";
            // 
            // ayudaToolStripMenuItem
            // 
            this.ayudaToolStripMenuItem.Name = "ayudaToolStripMenuItem";
            this.ayudaToolStripMenuItem.Size = new System.Drawing.Size(86, 29);
            this.ayudaToolStripMenuItem.Tag = "mnu.ayuda";
            this.ayudaToolStripMenuItem.Text = "AYUDA";
            this.ayudaToolStripMenuItem.ToolTipText = "Ayuda";
            // 
            // FrmInicio
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(886, 498);
            this.Controls.Add(this.menuInicio);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuInicio;
            this.Name = "FrmInicio";
            this.Tag = "title.main";
            this.Text = "Sistema de Gestion de Alquiler de Salón";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.menuInicio.ResumeLayout(false);
            this.menuInicio.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuInicio;
        private System.Windows.Forms.ToolStripMenuItem mnuUsuario;
        private System.Windows.Forms.ToolStripMenuItem administradorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem maestroToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem alquilerToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem organizarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reporteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ayudaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem admnistrarUsuariosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cerrarSesionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cambiarClaveToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cambiarIdiomaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem admnistrarPermisosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem proveedoresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem serviciosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem clientesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reservasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem crearModificarToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem desbloquearToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem CrearModificarUsuariosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem asignarToolStripMenuItem;
    }
}

