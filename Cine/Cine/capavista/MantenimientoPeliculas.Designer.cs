
namespace capavista
{
    partial class MantenimientoPeliculas
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.navegador1 = new NavegadorVista.Navegador();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.textIDPelicula = new System.Windows.Forms.TextBox();
            this.textNombrePelicula = new System.Windows.Forms.TextBox();
            this.textClasificacion = new System.Windows.Forms.TextBox();
            this.textGenero = new System.Windows.Forms.TextBox();
            this.textSubti = new System.Windows.Forms.TextBox();
            this.textIdioma = new System.Windows.Forms.TextBox();
            this.texPrecio = new System.Windows.Forms.TextBox();
            this.dgvoeliculas = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvoeliculas)).BeginInit();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(130, 12);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(574, 152);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.texPrecio);
            this.groupBox1.Controls.Add(this.textIdioma);
            this.groupBox1.Controls.Add(this.textSubti);
            this.groupBox1.Controls.Add(this.textGenero);
            this.groupBox1.Controls.Add(this.textClasificacion);
            this.groupBox1.Controls.Add(this.textNombrePelicula);
            this.groupBox1.Controls.Add(this.textIDPelicula);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 209);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(288, 276);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Datos";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(15, 36);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "ID Pelicula";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 67);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(44, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Nombre";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 93);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Clasificacion";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(21, 123);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(42, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Genero";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(23, 153);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(60, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Subtitulado";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(25, 178);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(38, 13);
            this.label6.TabIndex = 5;
            this.label6.Text = "Idioma";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(27, 208);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(37, 13);
            this.label7.TabIndex = 6;
            this.label7.Text = "Precio";
            // 
            // textIDPelicula
            // 
            this.textIDPelicula.Location = new System.Drawing.Point(92, 33);
            this.textIDPelicula.Name = "textIDPelicula";
            this.textIDPelicula.Size = new System.Drawing.Size(100, 20);
            this.textIDPelicula.TabIndex = 7;
            this.textIDPelicula.Tag = "idPeliculas";
            // 
            // textNombrePelicula
            // 
            this.textNombrePelicula.Location = new System.Drawing.Point(92, 64);
            this.textNombrePelicula.Name = "textNombrePelicula";
            this.textNombrePelicula.Size = new System.Drawing.Size(100, 20);
            this.textNombrePelicula.TabIndex = 8;
            this.textNombrePelicula.Tag = "Nombre";
            // 
            // textClasificacion
            // 
            this.textClasificacion.Location = new System.Drawing.Point(92, 90);
            this.textClasificacion.Name = "textClasificacion";
            this.textClasificacion.Size = new System.Drawing.Size(100, 20);
            this.textClasificacion.TabIndex = 9;
            this.textClasificacion.Tag = "Clasificación";
            // 
            // textGenero
            // 
            this.textGenero.Location = new System.Drawing.Point(92, 116);
            this.textGenero.Name = "textGenero";
            this.textGenero.Size = new System.Drawing.Size(100, 20);
            this.textGenero.TabIndex = 10;
            this.textGenero.Tag = "Genero";
            // 
            // textSubti
            // 
            this.textSubti.Location = new System.Drawing.Point(92, 150);
            this.textSubti.Name = "textSubti";
            this.textSubti.Size = new System.Drawing.Size(100, 20);
            this.textSubti.TabIndex = 11;
            this.textSubti.Tag = "Subtitulado";
            // 
            // textIdioma
            // 
            this.textIdioma.Location = new System.Drawing.Point(92, 178);
            this.textIdioma.Name = "textIdioma";
            this.textIdioma.Size = new System.Drawing.Size(100, 20);
            this.textIdioma.TabIndex = 12;
            this.textIdioma.Tag = "Idioma";
            // 
            // texPrecio
            // 
            this.texPrecio.Location = new System.Drawing.Point(92, 205);
            this.texPrecio.Name = "texPrecio";
            this.texPrecio.Size = new System.Drawing.Size(100, 20);
            this.texPrecio.TabIndex = 13;
            this.texPrecio.Tag = "precio";
            // 
            // dgvoeliculas
            // 
            this.dgvoeliculas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvoeliculas.Location = new System.Drawing.Point(318, 209);
            this.dgvoeliculas.Name = "dgvoeliculas";
            this.dgvoeliculas.Size = new System.Drawing.Size(564, 276);
            this.dgvoeliculas.TabIndex = 2;
            this.dgvoeliculas.Tag = "Peliculas";
            // 
            // MantenimientoPeliculas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(909, 512);
            this.Controls.Add(this.dgvoeliculas);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.navegador1);
            this.Name = "MantenimientoPeliculas";
            this.Text = "MantenimientoPeliculas";
            this.Load += new System.EventHandler(this.MantenimientoPeliculas_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvoeliculas)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private NavegadorVista.Navegador navegador1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox texPrecio;
        private System.Windows.Forms.TextBox textIdioma;
        private System.Windows.Forms.TextBox textSubti;
        private System.Windows.Forms.TextBox textGenero;
        private System.Windows.Forms.TextBox textClasificacion;
        private System.Windows.Forms.TextBox textNombrePelicula;
        private System.Windows.Forms.TextBox textIDPelicula;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvoeliculas;
    }
}