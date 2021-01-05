using Ejemplo.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Finca
{
    public partial class BuscarFinca : System.Web.UI.Page
    {
        string msj;

        FincaController fin = new FincaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fin.BuscarFinca();
                list_finca.DataSource = fin.BuscarFinca();
                list_finca.DataBind();
            }

        }


        protected void Modificar(object sender, CommandEventArgs e)
        {
            var Argument = e.CommandArgument.ToString().Split(',');
            IdF.Text = Argument[0];
            TB_Nombre.Text = Argument[1];
            Ubicacion.Text = Argument[2];
            Area.Text = Argument[3];
            idpersona.Text = Argument[4];
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                FincaController fn = new FincaController(IdF.Text,TB_Nombre.Text,Ubicacion.Text,Area.Text,idpersona.Text);
                if (fn.ModificarF(fn.fn))
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