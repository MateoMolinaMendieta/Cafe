using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using Ejemplo.conexion;
using System.Data;

namespace Ejemplo.Models
{

    public class Cultivo
    {
        BdComun conn = new BdComun();

        public string Pidcultivo { get; set; }
        public string PNombre { get; set; }
        public string Pdescripcion { get; set; }

        public bool RegistrarCultivo(Cultivo obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `RegistrarCultivo`('{0}', '{1}', '{2}')", obj.Pidcultivo, obj.PNombre, obj.Pdescripcion);
            return conn.RealizarTransaccion(sql);
        }

        public DataTable mostrarCultivos()
        {
            string sql = @"SELECT cultivo.idCultivo,cultivo.Nombre,cultivo.descripcion FROM cultivo;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        public bool modificarcultivo(Cultivo obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `ModificarCultivo`('{0}', '{1}', '{2}')", obj.Pidcultivo, obj.PNombre, obj.Pdescripcion);
            return conn.RealizarTransaccion(sql);
        }
    }
}    