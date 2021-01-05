using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Trabajador
{
    public partial class RegistrarT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack){
                CargarTrabajador();
            }
        }
        public void CargarTrabajador()
        {
            TrabajadorController tra = new TrabajadorController();
            repTarjetas.DataSource = tra.mostrartrabajador();
            repTarjetas.DataBind();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                TrabajadorController ta = new TrabajadorController(cedula.Value.ToString(), nombre.Value.ToString(), apellido.Value.ToString(), telefono.Value.ToString(), edad.Value.ToString());
                ta.registrartrabajador(ta.ta);


            }
            catch (Exception ex)
            {

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                TrabajadorController ta = new TrabajadorController(TBid.Text, TB_Nombre.Text, TBapellidos.Text, TBteledono.Text, TBEdad.Text);
                ta.ModificarTrabajador(ta.ta);
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            var Argumento = e.CommandArgument.ToString().Split(',');
            TBid.Text = Argumento[0];
            TB_Nombre.Text = Argumento[1];
            TBapellidos.Text = Argumento[2];
            TBteledono.Text = Argumento[3];
            TBEdad.Text = Argumento[4];
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('2')", true);

        }
    }
}