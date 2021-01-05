using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using Ejemplo.conexion;
using System.Data;

namespace Ejemplo.Models
{

    public class trabajador
    {
        BdComun conn = new BdComun();

        public string Pid { get; set; }
        public string Pnombre { get; set; }
        public string Papellido { get; set; }
        public string Ptelefono { get; set; }
        public string Pedad { get; set; }

        public bool RegistrarTrabajador(trabajador obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `RegistrarTrabajador`('{0}', '{1}', '{2}', '{3}', '{4}')", obj.Pid, obj.Pnombre, obj.Papellido, obj.Ptelefono, obj.Pedad);
            return conn.RealizarTransaccion(sql);
        }
        public DataTable MostrarTrabajadores()
        {
            string sql = @"SELECT trabajador.idtrabajador,trabajador.Nombre,trabajador.Apellidos,trabajador.Telefono,trabajador.edad FROM trabajador;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        public bool modificartrabajador(trabajador obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `ModificarTrabajador`('{0}', '{1}', '{2}', '{3}', '{4}')",obj.Pid,obj.Pnombre,obj.Papellido,obj.Ptelefono,obj.Pedad);
            return conn.RealizarTransaccion(sql);
        }
    }

}   