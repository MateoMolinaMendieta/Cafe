using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Cultivo
{
    public partial class RegistrarC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCultivo();
            }
        }
        public void CargarCultivo()
        {
            CultivoController cul = new CultivoController();
            repTarjetas.DataSource = cul.BuscarCultivo();
            repTarjetas.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            var Argumento = e.CommandArgument.ToString().Split(',');
            IdI.Text = Argumento[0];
            TB_Nombre.Text = Argumento[1];
            TBdescripcion.Text = Argumento[2];
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('2')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {


                CultivoController cul = new CultivoController(idcultivo.Value.ToString(), nombre.Value.ToString(), descripcion.Value.ToString());
                cul.Registrarcultivo(cul.cul);
            }
            catch (Exception ex)
            {

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {

                CultivoController cul = new CultivoController(IdI.Text, TB_Nombre.Text, TBdescripcion.Text);
                cul.ModificarCultivo(cul.cul);
            }
            catch (Exception ex)
            {

            }
        }
    }
    }
