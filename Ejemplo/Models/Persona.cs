using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using Ejemplo.conexion;
using System.Data;

namespace Ejemplo.Models
{

    public class Persona
    {
        BdComun conn = new BdComun();
        public string p_cedula { get; set; }
        public string p_nombre { get; set; }
        public string p_apellidos { get; set; }
        public string p_correo { get; set; }
        public string p_celular { get; set; }
        public string p_contrasena { get; set; }
        

        public bool insertarPerso(Persona obj)
        {
            string[] sql = new string[1];
            sql[0] = String.Format("CALL `RegistrarPersona`('{0}','{1}','{2}','{3}','{4}','{5}')", obj.p_cedula, obj.p_nombre, obj.p_apellidos, obj.p_correo,obj.p_celular, obj.p_contrasena);
            //sql[0] = "CALL `RegistrarPersona`('1124', 'f', 'f', 'f', 'f', 'f')";
            return conn.RealizarTransaccion(sql);
        }

        //
        public DataTable ConsultarCuenta(Persona obj)
        {

            string sql = "select * from persona where Correo='" + obj.p_correo + "' AND Contrasena=md5('" + obj.p_contrasena + "');";
            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
        public DataTable consultarMenu(string idCuenta)
        {
            string sql = @"select menu.`idMenu`,menu.Titulo,menu.Icono,vista.idVista,vista.nombre,vista.url,vista.icono vicono,vista.menu_idmenu,persona.idPersona 
                         from menu inner join vista on menu.`idMenu`=vista.menu_idmenu
                         inner join rol_vista on vista.idVista=rol_vista.Vista_idVista
                         inner join rol on rol.idRol=rol_vista.rol_idrol
                         inner join persona_rol on persona_rol.rol_idrol=rol.idRol
                         inner join persona on persona.idPersona=persona_rol.Persona_idpersona
                         where persona.idPersona='" + idCuenta + "';";

            return conn.EjecutarConsulta(sql, CommandType.Text);
        }
    }
}
