using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Trabajador
{
    public partial class RegistrarTrabajador : System.Web.UI.Page
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
                TrabajadorController ta = new TrabajadorController(cedula.Value.ToString(), nombre.Value.ToString(), apellido.Value.ToString(), telefono.Value.ToString(), edad.Value.ToString());
                ta.registrartrabajador(ta.ta);
               

            }catch(Exception ex)
            {

            }

        }
    }
}