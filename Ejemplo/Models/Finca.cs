using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using Ejemplo.conexion;
using System.Data;

namespace Ejemplo.Models
{

    public class Finca
    {
        BdComun conn = new BdComun();
        public string p_id { get; set; }
        public string p_nombre { get; set; }
        public string p_ubicacion { get; set; }
        public string p_areaa { get; set; }
        public string p_fkPersona { get; set; }

        public bool insertarFinca(Finca obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `RegistrarFinca`('{0}','{1}','{2}','{3}','{4}')", obj.p_id, obj.p_nombre, obj.p_ubicacion, obj.p_areaa, obj.p_fkPersona);
            return conn.RealizarTransaccion(sql);
        }

        public DataTable BuscarFinca()
        {
            string sql = @"SELECT finca.idFinca,finca.Nombre,finca.Ubicacion,finca.areaa,finca.fk_idpersona FROM finca;";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }


        public DataTable MostrarFinca(string fk_persona)
        {
            string sql = @"SELECT finca.idFinca,finca.Nombre,finca.Ubicacion,finca.areaa,finca.fk_idpersona FROM finca 
            INNER JOIN persona ON persona.idPersona=finca.fk_idpersona WHERE persona.idPersona='" + fk_persona + "';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }

        public bool ModificarFinca(Finca obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `ModificarFinca`('{0}','{1}','{2}','{3}')", obj.p_id, obj.p_nombre, obj.p_ubicacion, obj.p_areaa);
            return conn.RealizarTransaccion(sql);
        } 

        public bool EliminarFinca(string idfin)
        {
            string[] sql = new string[1];
            sql[0] = @"Delete from finca where idFinca='" + idfin + "';";
            return conn.RealizarTransaccion(sql);
        }

        public DataTable BuscarFincaLote(string fkpersona)
        {
            string sql = @"SELECT finca.idFinca,finca.Nombre FROM finca INNER JOIN persona ON finca.fk_idpersona=persona.idPersona WHERE persona.idPersona='" + fkpersona + "';";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
    }
}
      