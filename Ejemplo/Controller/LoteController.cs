
using Ejemplo.Models;

namespace Ejemplo.Controllers
{

    public class LoteController
    {
        public Lote lo = new Lote();

        public LoteController()
        {
            lo = new Lote();
        }
        public LoteController(string a, string b, string c, string d)
        {
            lo.pid = a;
            lo.pnombre = b;
            lo.ptamano = c;
            lo.fk_finca = d;

        }
        public bool RegistrarLote(Lote obj)
        {
            return lo.registrarLote(obj);
        }
        //public DataTable BuscarCultivo()
        //{
        //    return cul.mostrarCultivos();
        //}
        //public bool ModificarCultivo(Cultivo obj)
        //{
        //    return cul.modificarcultivo(obj);
        }
    }

