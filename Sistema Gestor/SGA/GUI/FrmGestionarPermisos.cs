using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BE.Permisos;
using BLL;
using SERVICIOS.Multilenguaje;

namespace GUI
{
    public partial class FrmGestionarPermisos : Form
    {
   
        private IEnumerable<Family> familias = null;
        private IEnumerable<Grant> patentes = null;

        GrantsBLL repo;
        private Family seleccion;

        private GrantsBLL permisosBLL = GrantsBLL.Instance;
        string componenteDesasociar = "";
        int componenteDesasociarNivel = 0;
        

        public FrmGestionarPermisos()
        {
            InitializeComponent();
            InitializeComponent();
            CargarFamilias();
            CargarPatentes();
           
            cbxpermisos.DataSource = permisosBLL.GetAllPermission();
            
        }
        private void CargarFamilias()
        {
            this.familias = permisosBLL.GetAllFamilias();
            cbxfamilias.DataSource = familias;
        }
        private void CargarPatentes()
        {
            this.patentes = permisosBLL.GetAllPatentes();
            cbxaccesos.DataSource = this.patentes;
        }
        private void FrmGestionarPermisos_Load(object sender, EventArgs e)
        {

        }

        private void btnagregaracceso_Click(object sender, EventArgs e)
        {
            if (seleccion != null)
            {
                var patente = (Grant)cbxaccesos.SelectedItem;
                if (patente != null)
                {
                    var esta = repo.Existe(seleccion, patente.Id);
                    if (esta)
                        MessageBox.Show("ya existe el acceso indicado");
                    else
                    {
                        seleccion.AddChild(patente);
                        MostrarFamilia(false);
                    }
                }
            }
        }
        void MostrarFamilia(bool init)
        {
            if (seleccion == null) return;


            IList<AbstractComponent> flia = null;
            if (init)
            {
                //traigo los hijos de la base
                flia = repo.GetAll("=" + seleccion.Id);


                foreach (var i in flia)
                    seleccion.AddChild(i);
            }
            else
            {
                flia = seleccion.Childs;
            }

            this.treeConfigurarRol.Nodes.Clear();

            TreeNode root = new TreeNode(seleccion.Name);
            root.Tag = seleccion;
            this.treeConfigurarRol.Nodes.Add(root);

            foreach (var item in flia)
            {
                MostrarEnTreeView(root, item);
            }

            treeConfigurarRol.ExpandAll();
        }
        void MostrarEnTreeView(TreeNode tn, AbstractComponent c)
        {
            TreeNode n = new TreeNode(c.Name);
            tn.Tag = c;
            tn.Nodes.Add(n);
            if (c.Childs != null)
                foreach (var item in c.Childs)
                {
                    MostrarEnTreeView(n, item);
                }

        }

        private void btnagregarfamilia_Click(object sender, EventArgs e)
        {

        }

        private void btnguardaracceso_Click(object sender, EventArgs e)
        {
            Grant p = new Grant()
            {
                Name = this.txtnombreacceso.Text,
                GrantType = (GrantType)this.cbxpermisos.SelectedItem

            };

            repo.SaveComponent(p, false);
            LlenarPatentesFamilias();

            MessageBox.Show("Patente guardada correctamente");
        }
        private void LlenarPatentesFamilias()
        {
            CargarFamilias();
            CargarPatentes();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btncrearfamilia_Click(object sender, EventArgs e)
        {

        }
    }
}
