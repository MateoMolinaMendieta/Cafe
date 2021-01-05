using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using System.Data;

namespace Ejemplo.Controllers
{

    public class TrabajadorController
    {
         public trabajador ta = new trabajador();


        public TrabajadorController()
        {
            ta = new trabajador();
        }

        public TrabajadorController(string a,string b,string c,string d,string e)
        {
            ta.Pid = a;
            ta.Pnombre = b;
            ta.Papellido = c;
            ta.Ptelefono = d;
            ta.Pedad = e;
        }
        public bool registrartrabajador(trabajador obj)
        {
            return ta.RegistrarTrabajador(obj);
        }
        public DataTable mostrartrabajador()
        {
            return ta.MostrarTrabajadores();
        }
        public bool ModificarTrabajador(trabajador obj)
        {
            return ta.modificartrabajador(obj);
        }
    }

}
