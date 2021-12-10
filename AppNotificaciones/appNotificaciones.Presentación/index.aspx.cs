using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using appNotificaciones.Negocios;
using appNotificaciones.Entidades;
namespace appNotificaciones.Presentación
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getDatos();
            }
        }
        private void getDatos()
        {
            List<usuario> sf = UsuarioNegocios.getUsuarios();

            foreach(var items in sf)
            {
                LblDatos.Text += items.nombre;
            }

        }
    }
}