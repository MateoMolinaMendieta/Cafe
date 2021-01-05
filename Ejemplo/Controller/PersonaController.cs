using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

using Ejemplo.Models;
using System.Data;

namespace Ejemplo.Controllers
{

    public class PersonaController
    {
        public Persona usu = new Persona();


        public PersonaController()
        {
            usu = new Persona();
        }
        public PersonaController(string a, string b, string c, string d, string e, string f)
        {
            usu.p_cedula = a;
            usu.p_nombre = b;
            usu.p_apellidos = c;
            usu.p_correo = d;
            usu.p_celular = e;
            usu.p_contrasena = f;
            

        }
        public bool Insertar(Persona obj)
        {
            return usu.insertarPerso(obj);
        }

        
    }
}

