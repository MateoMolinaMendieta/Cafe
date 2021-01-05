using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using System.Data;

namespace Ejemplo.Controllers
{

    public class InsumoController
    {
        public Insumo ins = new Insumo();


        public InsumoController()
        {
            ins = new Insumo();
        }
        public InsumoController(string a, string b, string c,string d)
        {
            ins.pid = a;
            ins.Pnombre = b;
            ins.Pdescripcion = c;
            ins.Pvalor = d;

        }
       public bool insertarinsumo(Insumo obj)
        {
            return ins.RegistrarInsumo(obj);
        }
        public DataTable buscarinsumo() {

            return ins.BuscarInsumo();
                }

        public bool modificarInsumo(Insumo obj)
        {
            return ins.ModificarInsumo(obj);
    }
    }
  

}

