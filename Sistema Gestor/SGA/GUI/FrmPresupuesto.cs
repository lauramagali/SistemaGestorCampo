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
    public partial class FrmPresupuesto : Form
    {

        public Event evento;
        private readonly SessionHandler SESSION = SessionHandler.GetInstance;
        private CustomerBLL customerBLL = CustomerBLL.Instance;
        private EventBLL eventBLL = EventBLL.Instance;

        public FrmPresupuesto(Event evento)
        {
            InitializeComponent();
            this.evento = evento;
            Customer customer = customerBLL.DescryptCustomer(evento.Customer);
            evento.Customer = customer;
            //evento
            txtevento.Text = txtevento.Text + evento.Title;
            txtfecha.Text = txtfecha.Text + evento.DateFrom;
            txtinvitados.Text = txtinvitados.Text + evento.GuessQuantity;
            txtTipo.Text = txtTipo.Text + evento.EventType;

            //cliente
            txtcliente.Text= txtcliente.Text+ evento.Customer.Name + evento.Customer.LastName;
            txtcuit.Text = txtcuit.Text+ evento.Customer.TaxPayerId;
            txtEmail.Text = txtEmail.Text+ evento.Customer.Mail;
            txtTel.Text = txtTel.Text + evento.Customer.Phone;

            //totales
            txtCosto.Text = txtCosto.Text + "0 $";
            txtsenia.Text = txtsenia.Text + "0 $";


        }


        private void FrmPresupuesto_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            evento= eventBLL.GenerateBudget(evento);
            txtCosto.Text = txtCosto.Text+ evento.Price.ToString();
            txtsenia.Text = txtsenia.Text+ evento.MinPrice.ToString();

        }

        private void button4_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
