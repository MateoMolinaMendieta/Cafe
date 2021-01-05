using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Principal
{
    public partial class Registrar : System.Web.UI.Page
    {
        string msj;
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
                PersonaController usu = new PersonaController(Cedula.Value.ToString(), Nombre.Value.ToString(),
               Apellidos.Value.ToString(), Correo.Value.ToString(), celular.Value.ToString(), Contrasena.Value.ToString());
                if (usu.Insertar(usu.usu))
                {

                    msj = "Usuario registrado correctamente";
                    //return RedirectToAction("Agregar_Consultorio_Admin", "consultorio");
                    Response.Redirect("~/View/Principal/Login.aspx");

                }
                else
                {
                    msj = "Error! algo salio mal";
                    Response.Redirect("~/Views/Principal/Registrar.aspx");
                }
            }
            catch (Exception)
            {
                Response.Write("<script> alert('ERROR INESPERADO' ); </script>");
            }

        }
    }
}