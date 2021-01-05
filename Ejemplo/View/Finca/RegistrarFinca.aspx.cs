using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Finca
{
    public partial class RegistrarFinca : System.Web.UI.Page
    {
        string msj ;
       
        PersonaController per = new PersonaController();
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
                
                FincaController fn = new FincaController(idfinca.Value.ToString(),nombre.Value.ToString(),
                    ubicacion.Value.ToString(),
                area.Value.ToString(),
            ((DataTable)HttpContext.Current.Session["login"]).Rows[0]["idPersona"].ToString());
                if (fn.Insertar(fn.fn))
            {

                msj = "Usuario registrado correctamente";
                //return RedirectToAction("Agregar_Consultorio_Admin", "consultorio");
                Response.Redirect("~/View/Principal/m.aspx");

            }
            else
            {
                msj = "Error! algo salio mal";
                Response.Redirect("~/Views/Principal/Registrar.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('ERROR INESPERADO' ); </script>");
        }

    }
}
}
  