using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using System.Data;

namespace Ejemplo.Controllers
{

    public class CultivoController
    {
      public  Cultivo cul = new Cultivo();

        public CultivoController()
        {
            cul = new Cultivo();
        }
        public CultivoController(string a, string b, string c)
        {
            cul.Pidcultivo = a;
            cul.PNombre = b;
            cul.Pdescripcion = c;

        }
        public bool Registrarcultivo(Cultivo obj)
        {
            return cul.RegistrarCultivo(obj);
        }
        public DataTable BuscarCultivo()
        {
            return cul.mostrarCultivos();
        }
        public bool ModificarCultivo(Cultivo obj)
        {
            return cul.modificarcultivo(obj);
        }
    }
}     
