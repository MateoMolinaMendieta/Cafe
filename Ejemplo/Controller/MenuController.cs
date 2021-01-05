using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.UI.HtmlControls;

namespace Ejemplo.Models
{
    public class MenuController
    {
        public void CargarMenu(string Login, HtmlGenericControl MenuGeneral)
        {
            Persona per = new Persona();
            DataTable Data = per.consultarMenu(Login);

            List<Menu> Nivel = new List<Menu>();
            //CREAR MENUS GENERALES
            DataTable First_Level = Data.AsEnumerable().Select(row =>
            {
                DataRow newRow = Data.NewRow();
                newRow["Titulo"] = row.Field<string>("Titulo");
                newRow["Icono"] = row.Field<string>("Icono");
                newRow["idMenu"] = row.Field<Int32>("idMenu");
                return newRow;
            }).Distinct(DataRowComparer.Default).CopyToDataTable();

            foreach (DataRow it in First_Level.Rows)
                Nivel.Add(new Menu(it));
            int index;
            //ASIGNAR VISTAS A MENUS
            foreach (DataRow it in Data.Rows)
            {

                index = IsMenu(it, Nivel, "menu_idmenu");
                Nivel[index].vistas.Add(new vista(it));

            }
            //CREAR MENU
            HtmlGenericControl ULMENU = new HtmlGenericControl("ul");
            ULMENU.Attributes.Add("class", "nav navbar-nav");
            MenuGeneral.Controls.Add(ULMENU);

            foreach (Menu it in Nivel)
            {
                ULMENU.Controls.Add(it.CrearMenu());
            }
        }

        internal void CargarMenu(string v, object menugeneral)
        {
            throw new NotImplementedException();
        }

        public bool IsCero(DataRow it, string Name)
        {
            if (it[Name].ToString().Equals("0"))
                return true;
            else return false;
        }


        public int IsMenu(DataRow row, List<Menu> menus, string Name)
        {
            int index = 0, ID = Convert.ToInt32(row[Name].ToString());
            foreach (Menu it in menus)
            {
                if (it.id == ID)
                    return index;
                index++;
            }
            return -1;
        }
    }

    public class Menu
    {
        public int id;
        public string Nombre;
        public string Icono;

        public List<vista> vistas = new List<vista>();

        public Menu(DataRow it)
        {
            this.id = Convert.ToInt32(it["idMenu"].ToString());
            this.Nombre = it["Titulo"].ToString();
            this.Icono = it["Icono"].ToString();
        }

        public HtmlGenericControl CrearMenu()
        {
            HtmlGenericControl li = new HtmlGenericControl("li");
            HtmlGenericControl a = new HtmlGenericControl("a");
            HtmlGenericControl ul = new HtmlGenericControl("ul");

            li.Attributes.Add("class", "menu-item-has-children dropdown");

            a.InnerHtml = "<i class='" + Icono + "'></i>" + Nombre + "";
            a.Attributes.Add("href", "#");
            a.Attributes.Add("class", "dropdown-toggle");
            a.Attributes.Add("data-toggle", "dropdown");
            a.Attributes.Add("aria-haspopup", "true");
            a.Attributes.Add("aria-expanded", "false");


            ul.Attributes.Add("class", "sub-menu children dropdown-menu");



            foreach (vista it in vistas)
            {
                ul.Controls.Add(it.CrearVista());
            }

            li.Controls.Add(a);
            li.Controls.Add(ul);
            return li;
        }
    }



    public class vista
    {
        public int padre;
        public string nombre;
        public string icono;
        public string url;

        public vista(DataRow it)
        {
            this.padre = Convert.ToInt32(it["menu_idmenu"].ToString());
            this.nombre = it["nombre"].ToString();
            this.url = it["url"].ToString();
            this.icono = it["vicono"].ToString();

        }
        public HtmlGenericControl CrearVista()
        {
            HtmlGenericControl li = new HtmlGenericControl("li");

            HtmlGenericControl a = new HtmlGenericControl("a");

            HtmlGenericControl i = new HtmlGenericControl("i");


            //a.InnerHtml = "<i class='" + icono + "'></i>" + nombre;
            i.Attributes.Add("class", icono);
            a.Attributes.Add("href", Convert.ToString(url));
            a.InnerText = nombre;

            li.Controls.Add(i);
            li.Controls.Add(a);
            return li;
        }
    }
}