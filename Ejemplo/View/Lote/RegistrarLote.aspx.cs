using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Lote
{
    public partial class RegistrarLote : System.Web.UI.Page
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
                LoteController lo = new LoteController(idlote.Value.ToString(), nombre.Value.ToString(), tamano.Value.ToString(), finca.Value.ToString());
                lo.RegistrarLote(lo.lo);
            }
            catch (Exception)
            {

            }
          

        }
    }
}