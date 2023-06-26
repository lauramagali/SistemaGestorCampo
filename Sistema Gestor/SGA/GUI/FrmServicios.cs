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

            IList<Service> servicios = aditionalServiceBLL.FindAll();

            dgvServicios.SuspendLayout();
            dgvServicios.Rows.Clear();

            if (servicios != null)
                foreach (Service servicio in servicios)
                {
                    int n = dgvServicios.Rows.Add();

                    dgvServicios.Rows[n].Cells[0].Value = servicio.Id;
                    dgvServicios.Rows[n].Cells[1].Value = servicio.Name;
                    dgvServicios.Rows[n].Cells[2].Value = servicio.Price;

                }

            dgvServicios.ResumeLayout();

        }

        private void FrmServicios_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (dgvServicios.SelectedRows.Count == 1)
            {
                string Nobreservicio = (string)dgvServicios.SelectedRows[0].Cells[1].Value;
                Service servicioAgergar = aditionalServiceBLL.FindServicesByName(Nobreservicio)[0];

                int n = dgvServiciosReserva.Rows.Add();

                dgvServiciosReserva.Rows[n].Cells[0].Value = servicioAgergar.Id;
                dgvServiciosReserva.Rows[n].Cells[1].Value = servicioAgergar.Name;
                dgvServiciosReserva.Rows[n].Cells[2].Value = servicioAgergar.Price;

                dgvServiciosReserva.ResumeLayout();
            }
            else
            {
                MessageBox.Show("Debe seleccionar un servicio primero para agregarlo", "Gestionar Alquileres", MessageBoxButtons.OK, MessageBoxIcon.Warning);
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
                AditionalService servicioad = new AditionalService();
                servicioad.ServiceName = row.Cells["Precio"].Value.ToString();

                MessageBox.Show(row.Cells["Pago"].Value.ToString());
                MessageBox.Show(row.Cells["Cantidad"].Value.ToString());
                MessageBox.Show(row.Cells["Observaciones"].Value.ToString());
            }

            foreach (Event dgvReservas in events)
            {
                int n = dgvReservas.Rows.Add();



                dgvReservas.Rows[n].Cells[0].Value = eventito.Id;
                dgvReservas.Rows[n].Cells[1].Value = eventito.Title;
                dgvReservas.Rows[n].Cells[2].Value = eventito.DateFrom;
                dgvReservas.Rows[n].Cells[3].Value = eventito.GuessQuantity;
                dgvReservas.Rows[n].Cells[4].Value = eventito.EventType;
                dgvReservas.Rows[n].Cells[5].Value = eventito.Price;
                dgvReservas.Rows[n].Cells[6].Value = eventito.MinPrice;
                dgvReservas.Rows[n].Cells[7].Value = eventito.Status;

            }

            dgvReservas.ResumeLayout();
        }
    }
}
