using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Cultivo
{
    public partial class BuscarCultivo : System.Web.UI.Page
    {
        CultivoController cul = new CultivoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cul.BuscarCultivo();
                list_cultivo.DataSource = cul.BuscarCultivo();
                list_cultivo.DataBind();
            }

        }

        protected void Modificar(object sender, CommandEventArgs e)
        {
            var Argument = e.CommandArgument.ToString().Split(',');
            IdI.Text = Argument[0];
            TB_Nombre.Text = Argument[1];
            descripcion.Text = Argument[2];
           
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                CultivoController cul = new CultivoController(IdI.Text, TB_Nombre.Text, descripcion.Text);
                cul.ModificarCultivo(cul.cul);
            }
            catch(Exception ex)
            {

            }
        }
    }
}