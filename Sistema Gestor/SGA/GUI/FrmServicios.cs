using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BE;
using BLL;
using SERVICIOS.Session;

namespace GUI
{
    public partial class FrmServicios : Form
    {
        public Event evento;
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;
        private CustomerBLL customerBLL = CustomerBLL.Instance;
        private EventBLL eventBLL = EventBLL.Instance;
        private AditionalServicesBLL aditionalServiceBLL = AditionalServicesBLL.Instance;

        public FrmServicios(Event evento)
        {
            InitializeComponent();
            this.evento = evento;
            IList<Service> servicios = aditionalServiceBLL.FindAll();

            dgvServicios.SuspendLayout();
            dgvServicios.Rows.Clear();

            if (servicios != null)
                foreach (Service servicio in servicios)
                {
                    int n = dgvServicios.Rows.Add();

                    dgvServicios.Rows[n].Cells[0].Value = servicio.Id;
                    dgvServicios.Rows[n].Cells[1].Value = servicio.Name;
                    dgvServicios.Rows[n].Cells[2].Value = servicio.ProviderPrice;

                }

            dgvServicios.ResumeLayout();

        }

        private void FrmServicios_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (dgvServicios.SelectedRows.Count == 1 && qtyservicio.Value>0)
            {
                string Nobreservicio = (string)dgvServicios.SelectedRows[0].Cells[1].Value;
                Service servicioAgergar = aditionalServiceBLL.FindServicesByName(Nobreservicio)[0];

                int n = dgvServiciosReserva.Rows.Add();

                dgvServiciosReserva.Rows[n].Cells[0].Value = servicioAgergar.Id;
                dgvServiciosReserva.Rows[n].Cells[1].Value = servicioAgergar.Name;
                dgvServiciosReserva.Rows[n].Cells[2].Value = servicioAgergar.ProviderPrice;
                dgvServiciosReserva.Rows[n].Cells[3].Value = qtyservicio.Value;

               dgvServiciosReserva.ResumeLayout();
            }
            else
            {
                MessageBox.Show("Debe seleccionar un servicio y su cantidad para poder agregarlo", "Gestionar Alquileres", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (dgvServicios.SelectedRows.Count == 1)
            {
                int Fila = dgvServiciosReserva.CurrentRow.Index;
                dgvServiciosReserva.Rows.RemoveAt(Fila);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in dgvServiciosReserva.Rows)
            {
                Service servicio = new Service();
                AditionalService adicional = new AditionalService();
                servicio.Id = (int)row.Cells[0].Value;
                servicio.Name = row.Cells[1].Value.ToString();
                servicio.ProviderPrice = (decimal)row.Cells[2].Value;
                //adicional.EventId = (int)evento.Id;
                adicional.ServiceId = (int)servicio.Id;
                adicional.Service = servicio;
                var qty= (decimal)row.Cells[3].Value;
                adicional.Price = servicio.ProviderPrice * qty; 
                adicional.Quantity= qty ;
                adicional.Status = AditionalServiceStatus.PENDING;
                adicional.CreatedAt = DateTime.Now;

                this.evento.AditionalServices.Add(adicional);               
            }
            this.Close();
         
        }
    }
}
