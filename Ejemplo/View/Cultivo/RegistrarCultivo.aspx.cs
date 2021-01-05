using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Cultivo
{
    public partial class RegistrarCultivo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e) {
            try
            {


                CultivoController cul = new CultivoController(idcultivo.Value.ToString(), nombre.Value.ToString(), descripcion.Value.ToString());
                cul.Registrarcultivo(cul.cul);
            } catch(Exception ex)
            {

            }
            }
    }
}