using Ejemplo.Controllers;
using Ejemplo.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Ejemplo.View.Menu
{
    public partial class Menu : System.Web.UI.MasterPage
    {
        DataTable aux, DatRol;
        DataRow dato, Dr;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                MenuController men = new MenuController();
                PersonaController usu = new PersonaController();
                men.CargarMenu(((DataTable)Session["login"]).Rows[0]["idPersona"].ToString(), menugeneral);
                //aux= usu.consultarImg(Session["login"].ToString());
                //DatRol = usu.consultarNombreRol(Session["login"].ToString());

                //if (DatRol.Rows.Count > 0)
                //{
                //    Dr = DatRol.Rows[0];
                //    Session["NombreRol"] = Dr["NombreRol"].ToString();

                //}

                //if (aux.Rows.Count > 0)
                //{
                //    dato = aux.Rows[0];
                //    Session["IMG"] = dato["foto"].ToString();

                //}


            }
            else
            {
                Response.Redirect("~/Views/Principal/Login.aspx?wsp=1");
            }



        }
    }
}
   