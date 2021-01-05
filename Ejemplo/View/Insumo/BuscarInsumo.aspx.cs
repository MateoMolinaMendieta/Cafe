using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Insumo
{
    public partial class BuscarInsumo : System.Web.UI.Page
    {

        InsumoController insu = new InsumoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                insu.buscarinsumo();
                list_insumo.DataSource = insu.buscarinsumo();
                list_insumo.DataBind();
            }

        }

        protected void Modificar(object sender, CommandEventArgs e)
        {

            var Argument = e.CommandArgument.ToString().Split(',');
            IdI.Text = Argument[0];
            TB_Nombre.Text = Argument[1];
            descripcion.Text = Argument[2];
            valor.Text = Argument[3];
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);



            //var Argument = e.CommandArgument.ToString().Split(',');
            //IdF.Text = Argument[0];
            //TB_Nombre.Text = Argument[1];
            //Ubicacion.Text = Argument[2];
            //Area.Text = Argument[3];
            //idpersona.Text = Argument[4];
            //ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                InsumoController ins = new InsumoController(IdI.Text,TB_Nombre.Text,descripcion.Text,valor.Text);
                ins.modificarInsumo(ins.ins);
            }
            catch (Exception ex)
            {

            }
            }

        
    }
}