using Ejemplo.Controllers;
using Ejemplo.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejemplo.View.Principal
{
    public partial class Login : System.Web.UI.Page
    {
        Persona per = new Persona();
        DataRow dato;
        DataTable aux;
        public String msj = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Boton3_Click(object sender, EventArgs e)
        {
            try
            {
                if (!String.IsNullOrEmpty(Correo.Value.ToString()) && !String.IsNullOrEmpty(Contrasena.Value.ToString()))

                {
                    per.p_correo = Correo.Value.ToString();
                    per.p_contrasena = Contrasena.Value.ToString();
                    aux = per.ConsultarCuenta(per);
                    if (aux.Rows.Count > 0)
                    {
                        dato = aux.Rows[0];
                        //Session["nombre"] = dato["Nombre"].ToString() + " " + dato["Apellidos"];
                                          
                        HttpContext.Current.Session["login"] = aux;                       
                        Response.Redirect("m.aspx");
                    }
                    else
                    {
                        msj = "Verifique sus datos";
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                    }
                }
                else
                {
                    msj = "CAMPOS NO PUEDEN SER VACIOS";
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                }


            }
            catch (Exception x)
            {


            }


        }

    }
    }

