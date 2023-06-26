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
    public partial class FrmPagos : Form
    {
        public Event evento;
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;
        private CustomerBLL customerBLL = CustomerBLL.Instance;
        private EventBLL eventBLL = EventBLL.Instance;

        public FrmPagos(Event evento)
        {
            InitializeComponent();
            this.evento = evento;
            Customer customer = customerBLL.DescryptCustomer(evento.Customer);
            evento.Customer = customer;

            dgvPagos.SuspendLayout();
            dgvPagos.Rows.Clear();

            int n = dgvPagos.Rows.Add();

            dgvPagos.Rows[n].Cells[0].Value = evento.Id;
            dgvPagos.Rows[n].Cells[1].Value = evento.Title;
            dgvPagos.Rows[n].Cells[2].Value = evento.DateFrom;
            dgvPagos.Rows[n].Cells[3].Value = evento.GuessQuantity;
            dgvPagos.Rows[n].Cells[4].Value = evento.EventType;
            dgvPagos.Rows[n].Cells[5].Value = evento.Price;
            dgvPagos.Rows[n].Cells[6].Value = evento.MinPrice;
            dgvPagos.Rows[n].Cells[7].Value = evento.Status;

            dgvPagos.ResumeLayout();

            this.btnAbonar.Visible = EventStatus.PRESUPUESTADO.Equals(this.evento.Status);
            this.btnCancelarDeuda.Visible = EventStatus.SENIADO.Equals(this.evento.Status);

        }

    private void btnAbonar_Click_1(object sender, EventArgs e)
    {
        var errors = eventBLL.PayEventMessage(evento);
           
        errors.ForEach(error =>
        {
            DialogResult result = MessageBox.Show("Atención:" + error.ToString(), "Pagar Evento", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
            if (DialogResult.OK == result) {
                evento = eventBLL.PayEvent(evento);
                this.Close();
            }
        });
         


    }

    private void btnCancelarDeuda_Click(object sender, EventArgs e)
        {
            var errors = eventBLL.PayEventMessage(evento);
            errors.ForEach(error =>
            {
                DialogResult result = MessageBox.Show("Atención:" + error.ToString(), "Pagar Evento", MessageBoxButtons.OKCancel, MessageBoxIcon.Warning);
                if (DialogResult.OK == result)
                {
                    evento = eventBLL.PayEvent(evento);
                    this.Close();
                }
            });

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
