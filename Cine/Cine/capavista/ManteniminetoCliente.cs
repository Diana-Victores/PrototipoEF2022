using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace capavista
{
    public partial class ManteniminetoCliente : Form
    {
        public ManteniminetoCliente()
        {
            InitializeComponent();
        }

        private void ManteniminetoCliente_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "8003";
            TextBox[] Grupotextbox = { textIDCliente, textNombreCliente,
                textNitCliente};
            TextBox[] Idtextbox = { textIDCliente };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dgvCliente;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dgvCliente, Grupotextbox, "colchoneriaa");
        }
    }
}
