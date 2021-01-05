using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Insumo
{
    public partial class RegistrarI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarInsumo();

            }

        }
        public void CargarInsumo()
        {
            InsumoController ins = new InsumoController();
            repTarjetas.DataSource = ins.buscarinsumo();
            repTarjetas.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                InsumoController ins = new InsumoController(idin.Value.ToString(), nombrei.Value.ToString(), descripcion.Value.ToString(), valor.Value.ToString());
               if(ins.insertarinsumo(ins.ins))
                {

                }

            }
            catch (Exception ex)
            {


            }
        
    }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                InsumoController ins = new InsumoController(IdI.Text, TB_Nombre.Text, descripcionn.Text, valorr.Text);
                ins.modificarInsumo(ins.ins);
            }
            catch (Exception ex)
            {

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            var Argument = e.CommandArgument.ToString().Split(',');
            IdI.Text = Argument[0];
            TB_Nombre.Text = Argument[1];
            descripcionn.Text = Argument[2];
            valorr.Text = Argument[3];
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('2')", true);
        }
    }
}