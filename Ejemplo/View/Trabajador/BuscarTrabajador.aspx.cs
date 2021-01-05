using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Trabajador
{
    public partial class BuscarTrabajador : System.Web.UI.Page
    {
        TrabajadorController ta = new TrabajadorController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ta.mostrartrabajador();
                list_trabajador.DataSource = ta.mostrartrabajador();
                list_trabajador.DataBind();
            }

        }

        protected void Modificar(object sender, CommandEventArgs e)
        {
            var Argument = e.CommandArgument.ToString().Split(',');
            cedula.Text = Argument[0];
            TB_Nombre.Text = Argument[1];
            apellidos.Text = Argument[2];
            teledono.Text = Argument[3];
            edad.Text = Argument[4];
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                TrabajadorController ta = new TrabajadorController(cedula.Text, TB_Nombre.Text, apellidos.Text, teledono.Text, edad.Text);
                ta.ModificarTrabajador(ta.ta);
            }catch(Exception ex)
            {

            }

        }
    }
}