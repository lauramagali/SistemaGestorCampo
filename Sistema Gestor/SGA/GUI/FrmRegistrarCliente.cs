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



namespace GUI
{
    public partial class FrmRegistrarCliente : Form
    {
        public Customer customer = new Customer();

        private CustomerBLL customerBLL = CustomerBLL.Instance;
        public FrmRegistrarCliente()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtTaxpayerid.Text != "" && txtName.Text != "" && txtLastname.Text != "" && txtMail.Text != "" && txtPhone.Text != "" && txtAddress.Text != "" && txtZipcode.Text != "")
            {

                customer.TaxPayerId=txtTaxpayerid.Text;
                customer.Name=txtName.Text;
                customer.LastName = txtLastname.Text;
                customer.Mail= txtMail.Text;
                customer.Phone = txtPhone.Text;
                customer.ZipCode =txtZipcode.Text;//TODO: este es el celular ahora
                customer.Address= txtAddress.Text;

                var errors = customerBLL.SaveCustomer(this.customer);
                if (errors.Count > 0)
                {
                    errors.ForEach((v) => MessageBox.Show(v.ToString(), "Registrar usuario", MessageBoxButtons.OK, MessageBoxIcon.Error));

                }
                else
                {

                    DialogResult result = MessageBox.Show("Cliente Guardado Correctamente", "Registrar usuario", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    if (DialogResult.OK == result)
                    {   
                        this.Close();

                    }
                }

            }
            else {
                    MessageBox.Show("Todos los campos son Requeridos! ", "Registrar usuario", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                }
            
        }
            
        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }

       
    }
}
