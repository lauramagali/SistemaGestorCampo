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
using BE;
using SERVICIOS;
using SERVICIOS.Session;
using SERVICIOS.Multilenguaje;
using System.IO;



namespace GUI
{
    public partial class FrmCargarReserva : Form
    {
        public Event evento;

        
        private AditionalServicesBLL aditionalServicesBLL = AditionalServicesBLL.Instance;
        private EventBLL eventsBLL = EventBLL.Instance;
      
        public FrmCargarReserva()
        {
            InitializeComponent();
        }
        public FrmCargarReserva(Event evento)
        {
            this.evento = evento;
            InitializeComponent();

            if (this.evento.Id == null)
            {
                this.evento.DateFrom = DateTime.Now;
                
            }
            else
            {
                this.Text = this.Text + "#" + this.evento.Id;
            }
            

            txtnombreEvento.DataBindings.Add("Text", this.evento, "Title");

           //if (this.evento.GuessQuantity != null) qtyGuest.Text = this.evento.GuessQuantity.ToString();

            //qtyGuest.DataBindings.Add("Text", this.evento, "GuessQuantity");

            dtpFechaReserva.DataBindings.Add("Value", this.evento, "DateFrom");
           
        }


        private void btnCancelarReserva_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnAdicionalServ_Click(object sender, EventArgs e)
        {  
            var evento = new Event();
            
            var form = new GUI.FrmServicios(evento);

            DialogResult respuesta = form.ShowDialog();

            //cancel xq venimos de cerrar 
            if (respuesta == DialogResult.Cancel)
            {
                //recuperando la variable publica del formulario hijo
                this.evento.AditionalServices = form.evento.AditionalServices;
               

            }
            
        }


        private void cmbTipoEvento_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.evento.EventType = (EventType)this.cmbEventType.SelectedValue;
        }

        private void FrmCargarReserva_Load(object sender, EventArgs e)
        {
            List<EventType> tiposeventos = Enum.GetValues(typeof(EventType)).Cast<EventType>().ToList();
            cmbEventType.DataSource = tiposeventos;

          
        }

        private void btnguardarReserva_Click(object sender, EventArgs e)
        {
            if (qtyGuest.Text != null) evento.GuessQuantity = int.Parse(qtyGuest.Text);

            var errors = eventsBLL.SaveEvent(this.evento);


            if (errors.Count > 0)
            {
                errors.ForEach((v) => MessageBox.Show("Atención:" + v.ToString(), "Cargar Evento", MessageBoxButtons.OK, MessageBoxIcon.Warning));
               

            }
            else
            {
                DialogResult result= MessageBox.Show("Evento Cargado correctamente", "Cargar Evento", MessageBoxButtons.OK, MessageBoxIcon.Information);

                if (DialogResult.OK == result)
                {
                    this.Close();

                }
            }

        }

    }
}
