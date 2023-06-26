using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SERVICIOS.Session;
using BE;
using BLL;

namespace GUI
{
    public partial class FrmGestionarAlquileres : Form
    {
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;
        private CustomerBLL customerBLL = CustomerBLL.Instance;
        private EventBLL eventBLL = EventBLL.Instance;
      
        public FrmGestionarAlquileres()
        {
            InitializeComponent();
        }

        private void btncancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnRegistrarCli_Click(object sender, EventArgs e)
        {

            if (SESSION.IsLogged())
            {

                FrmRegistrarCliente FormAutRegCli = new FrmRegistrarCliente();
               
                DialogResult respuesta = FormAutRegCli.ShowDialog(); //abrimos el formulario 2 como cuadro de dialogo modal
                if (respuesta == DialogResult.OK)
                {
                    //recuperando la variable publica del formulario hijo
                   
                    List<Customer> customers = customerBLL.FindCustomer(FormAutRegCli.customer.TaxPayerId, "", "");

                    dgvCustomers.SuspendLayout();
                    dgvCustomers.Rows.Clear();

                    if (customers != null)
                        foreach (Customer customer in customers)
                        {
                            int n = dgvCustomers.Rows.Add();

                            dgvCustomers.Rows[n].Cells[0].Value = customer.Id;
                            dgvCustomers.Rows[n].Cells[1].Value = customer.TaxPayerId;
                            dgvCustomers.Rows[n].Cells[2].Value = customer.Name + " " + customer.LastName;
                            dgvCustomers.Rows[n].Cells[3].Value = customer.Address;
                            dgvCustomers.Rows[n].Cells[4].Value = customer.Phone + "/" + customer.ZipCode;
                            dgvCustomers.Rows[n].Cells[5].Value = customer.Mail;

                        }

                    dgvCustomers.ResumeLayout();

                }

                // FormAutRegCli.Show();
            }
        }

        private void btnCargarReserva_Click(object sender, EventArgs e)
        {

            if (SESSION.IsLogged())
            {

                if (dgvCustomers.SelectedRows.Count == 1)
                {
                    String taxPayerId = (string)dgvCustomers.SelectedRows[0].Cells[1].Value;
                    var customer = customerBLL.FindCustomer(taxPayerId, null, null)[0];

                    var eventToEdit = new Event();
                    eventToEdit.Customer = customer;

                    var form = new GUI.FrmCargarReserva(eventToEdit);

                    DialogResult respuesta = form.ShowDialog();

                    //cancel xq venimos de cerrar reserva
                    if (respuesta == DialogResult.Cancel)
                    {
                        //recuperando la variable publica del formulario hijo

                        var events = eventBLL.FindEvents(form.evento.Id);

                        dgvReservas.SuspendLayout();
                        dgvReservas.Rows.Clear();

                        if (events != null)
                            foreach (Event eventito in events)
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
                else
                {
                    MessageBox.Show("Debe seleccionar un cliente primero para cargar un evento", "Gestionar Alquileres", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

                
            }
        }

        private void btnBuscarCli_Click(object sender, EventArgs e)
        {
            List<Customer> customers = customerBLL.FindCustomer(txtTaxId.Text, "","");

            dgvCustomers.SuspendLayout();
            dgvCustomers.Rows.Clear();

            if (customers != null)
                foreach (Customer customer in customers)
                {
                   int n = dgvCustomers.Rows.Add();

                    dgvCustomers.Rows[n].Cells[0].Value = customer.Id;
                    dgvCustomers.Rows[n].Cells[1].Value = customer.TaxPayerId;
                    dgvCustomers.Rows[n].Cells[2].Value = customer.Name + " " + customer.LastName;
                    dgvCustomers.Rows[n].Cells[3].Value = customer.Address;
                    dgvCustomers.Rows[n].Cells[4].Value = customer.Phone+ "/" + customer.ZipCode;
                    dgvCustomers.Rows[n].Cells[5].Value = customer.Mail;

                }

            dgvCustomers.ResumeLayout();

        }

        private void FrmGestionarAlquileres_Load(object sender, EventArgs e)
        {

        }

        


        private void btnBuscarReserva_Click(object sender, EventArgs e)
        {
            var selectedCustomer = (Customer)dgvCustomers.CurrentRow?.DataBoundItem;
            int? eventId = null;
           
            if (!string.IsNullOrEmpty(txtEventId.Text))
            {
                eventId = int.Parse(txtEventId.Text);
            }
           
            var events = this.eventBLL.FindEvents(
                eventId: eventId
                //customerId: selectedCustomer?.Id,
                //from: fecha
                ) ;

            dgvReservas.SuspendLayout();
            dgvReservas.Rows.Clear();

            if (events != null)
                foreach (Event eventito in events)
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

        private void btnpresupuesto_Click(object sender, EventArgs e)
        {
            if (dgvReservas.SelectedRows.Count == 1)
            {
                Event eventoPresupuestar = eventBLL.LoadFullEvent((int)dgvReservas.SelectedRows[0].Cells[0].Value);
                if (eventoPresupuestar.Status == EventStatus.INICIADO)
                {
                    var form = new GUI.FrmPresupuesto(eventoPresupuestar);

                    DialogResult respuesta = form.ShowDialog();

                    //cancel xq venimos de cerrar presupuesto
                    if (respuesta == DialogResult.Cancel)
                    {
                        //recuperando la variable publica del formulario hijo

                        var events = eventBLL.FindEvents(form.evento.Id);

                        dgvReservas.SuspendLayout();
                        dgvReservas.Rows.Clear();

                        if (events != null)
                            foreach (Event eventito in events)
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
                else {
                    MessageBox.Show("El evento seleccionado no se puede presupuestar porque no esta en estado iniciado.", "Gestionar Alquileres", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
            {
                MessageBox.Show("Debe seleccionar un evento para poder Presupuestar", "Gestionar Alquileres", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void btnpagos_Click(object sender, EventArgs e)
        {
            if (dgvReservas.SelectedRows.Count == 1)
            {
                Event eventoPagar = eventBLL.LoadFullEvent((int)dgvReservas.SelectedRows[0].Cells[0].Value);
              
                if (eventoPagar.Status == EventStatus.PRESUPUESTADO || eventoPagar.Status == EventStatus.SENIADO)
                {
                    var form = new GUI.FrmPagos(eventoPagar);

                    DialogResult respuesta = form.ShowDialog();

                    //cancel xq venimos de cerrar presupuesto
                    if (respuesta == DialogResult.Cancel)
                    {
                        //recuperando la variable publica del formulario hijo

                        var events = eventBLL.FindEvents(form.evento.Id);

                        dgvReservas.SuspendLayout();
                        dgvReservas.Rows.Clear();

                        if (events != null)
                            foreach (Event eventito in events)
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
                else
                {
                    MessageBox.Show("El evento seleccionado no se puede presupuestar porque no esta en estado iniciado.", "Gestionar Alquileres", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
            {
                MessageBox.Show("Debe seleccionar un evento para poder Presupuestar", "Gestionar Alquileres", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
    }
}
