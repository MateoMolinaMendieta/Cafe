using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using Ejemplo.conexion;
using System.Data;

namespace Ejemplo.Models
{

    public class Insumo
    {
        BdComun conn = new BdComun();
        public string pid { get; set; }
        public string Pnombre { get; set; }
        public string Pdescripcion { get; set; }
        public string Pvalor { get; set; }

        public bool RegistrarInsumo(Insumo obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `RegistrarInsumo`('{0}','{1}','{2}','{3}')",obj.pid,obj.Pnombre, obj.Pdescripcion, obj.Pvalor);
            return conn.RealizarTransaccion(sql);

        }
        public DataTable BuscarInsumo() { 
        string sql = @"SELECT insumo.IdInsumo,insumo.Nombre,insumo.Descripcion,insumo.Valor FROM insumo;";
        return conn.EjecutarConsulta(sql, CommandType.Text);

        }
        public bool ModificarInsumo(Insumo obj)
        {
            string[] sql= new string[1];
            sql[0] = String.Format("CALL `ModificarInsumo`('{0}','{1}','{2}','{3}')",obj.pid,obj.Pnombre,obj.Pdescripcion,obj.Pvalor);
            return conn.RealizarTransaccion(sql);
        }

}
}

     