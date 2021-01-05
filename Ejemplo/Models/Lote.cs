using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using Ejemplo.conexion;
using System.Data;

namespace Ejemplo.Models
{

    public class Lote
    {
        BdComun conn = new BdComun();
        public string pid { get; set; }
        public string pnombre { get; set; }
        public string ptamano { get; set; }
        public string fk_finca { get; set; }


        public bool registrarLote(Lote obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `RegistrarLote`('{0}', '{1}', '{2}', '{3}')", obj.pid, obj.pnombre, obj.ptamano, obj.fk_finca);
            return conn.RealizarTransaccion(sql);
        }
    }
}