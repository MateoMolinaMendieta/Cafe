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
    public partial class uno : System.Web.UI.Page
    {
        string msj;

        PersonaController per = new PersonaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarFinca();
        }

        public void CargarFinca()
        {
            FincaController fn = new FincaController();
            repTarjetas.DataSource=fn.MostrarFincas(((DataTable)HttpContext.Current.Session["login"]).Rows[0]["idPersona"].ToString());
            repTarjetas.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('1')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                FincaController fn = new FincaController(idfinca.Value.ToString(), nombre.Value.ToString(),
                    ubicacion.Value.ToString(),
                area.Value.ToString(),
            ((DataTable)HttpContext.Current.Session["login"]).Rows[0]["idPersona"].ToString());
                if (fn.Insertar(fn.fn))
                {

                    msj = "Usuario registrado correctamente";
                    //return RedirectToAction("Agregar_Consultorio_Admin", "consultorio");
                    Response.Redirect("~/View/Finca/uno.aspx");

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

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            var Argument = e.CommandArgument.ToString().Split(',');
            IdF.Text = Argument[0];
            TB_Nombre.Text = Argument[1];
            TUbicacion.Text = Argument[2];
            TArea.Text = Argument[3];
            TPersona.Text = Argument[4];
            
            ScriptManager.RegisterStartupScript(this.Page, GetType(), "alertss", "Open('2')", true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                FincaController fn = new FincaController(IdF.Text, TB_Nombre.Text, TUbicacion.Text, TArea.Text, TPersona.Text);
                if (fn.ModificarF(fn.fn))
                {

                    msj = "Usuario registrado correctamente";
                    //return RedirectToAction("Agregar_Consultorio_Admin", "consultorio");
                    Response.Redirect("~/View/Finca/uno.aspx");

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
