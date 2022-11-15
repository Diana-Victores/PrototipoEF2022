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
    public partial class MantenimientoPeliculas : Form
    {
        public MantenimientoPeliculas()
        {
            InitializeComponent();
        }

        private void MantenimientoPeliculas_Load(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "8002";
            TextBox[] Grupotextbox = { textIDPelicula, textNombrePelicula, textClasificacion,
            textGenero, textSubti, textIdioma, texPrecio};
            TextBox[] Idtextbox = { textIDPelicula };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dgvoeliculas;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dgvoeliculas, Grupotextbox, "colchoneriaa");
        }
    }
}
