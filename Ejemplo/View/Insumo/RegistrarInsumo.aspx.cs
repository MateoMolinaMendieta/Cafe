using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Insumo
{
    public partial class RegistrarInsumo : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                InsumoController ins = new InsumoController(idin.Value.ToString(),nombrei.Value.ToString(), descripcion.Value.ToString(), valor.Value.ToString());
                ins.insertarinsumo(ins.ins);
            }
            catch (Exception ex)
            {


            }
        }
    }
}