using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
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
                CargarFinca();
            }
        }

        public void CargarFinca()
        {
            FincaController fn = new FincaController();
            drl_finca.DataSource = fn.ConsultarFincaLote(((DataTable)HttpContext.Current.Session["login"]).Rows[0]["idPersona"].ToString());
            drl_finca.DataValueField = "idFinca";
            drl_finca.DataTextField = "Nombre";
            drl_finca.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                LoteController lo = new LoteController(idlote.Value.ToString(), nombre.Value.ToString(), tamano.Value.ToString(), drl_finca.SelectedValue);
                lo.RegistrarLote(lo.lo);
            }
            catch (Exception)
            {

            }
          

        }
    }
}