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
                getDatosUsuarios();
                getDatosNotificaciones();
                getDatosNotificacionesUsuario();
            }
        }
        private void getDatosUsuarios()
        {
            List<usuario> sf = UsuarioNegocios.getUsuarios();

            foreach(var items in sf)
            {
                LblDatosUsuario.Text += items.nombre;
            }

        }

        private void getDatosNotificaciones()
        {
            List<notificaciones> sf = NotificacionesNegocios.getNotificaciones();

            foreach (var items in sf)
            {
                LblDatosNotificaciones.Text += items.mensaje+"</br>";
            }

        }

        private void getDatosNotificacionesUsuario()
        {
            List<notificaciones_usuarios> sf = NotificacionesNegocios.getNotificacionesUsuario();

            foreach (var items in sf)
            {
                LblDatosNotificaciones.Text += items.id + "</br>";
            }

        }

        private List<notificaciones_usuarios> getNotiUsuarios()
        {
            List<notificaciones_usuarios> sf = NotificacionesNegocios.getNotificacionesUsuario();
            foreach(var items in sf)
            {
                
            }
            return sf;
        }

        private void MostrarDatosNotificacionesUsuario()
        {
            List<notificaciones_usuarios> sf = NotificacionesNegocios.getNotificacionesUsuario();

            foreach (var items in sf)
            {
                LblDatosNotificaciones.Text += items.id + "</br>";

            }

        }
    }
}