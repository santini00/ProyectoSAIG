using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using appNotificaciones.Entidades;
using appNotificaciones.Datos.AccesoDatos;
namespace appNotificaciones.Negocios
{
    public class NotificacionesNegocios
    {
        public static List<notificaciones> getNotificaciones()
        {
            BaseDatosNotificaciones a = new BaseDatosNotificaciones();


            return a.getNotificaciones();
        }

        public static List<notificaciones_usuarios> getNotificacionesUsuario()
        {
            BaseDatosNotificaciones a = new BaseDatosNotificaciones();


            return a.getNotificacionesUsuarios();
        }
    }
}
