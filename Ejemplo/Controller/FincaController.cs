using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using System.Data;

namespace Ejemplo.Controllers
{

    public class FincaController
    {
        public Finca fn = new Finca();


        public FincaController()
        {
            fn = new Finca();
        }
        public FincaController(string a,string b, string c, string d,string e)
        {
            fn.p_id = a;
            fn.p_nombre = b;
          fn.p_ubicacion = c;
           fn.p_areaa= d;
            fn.p_fkPersona = e;
         

        }
        public bool Insertar(Finca obj)
        {
            return fn.insertarFinca(obj);
        }
        public bool ModificarF(Finca obj)
        {
            return fn.ModificarFinca(obj);
        }
        public DataTable BuscarFinca()
        {
            return fn.BuscarFinca();
        }
        public DataTable MostrarFincas(string a)
        {
            return fn.MostrarFinca(a);
        }
        public bool EliminarFinca(string id)
        {
            return fn.EliminarFinca(id);
        }

        //public DataTable ConsultarCuenta()
        //{
        //    return usu.ConsultarCuenta();
        //}
    }
}

