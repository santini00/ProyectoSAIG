using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using appNotificaciones.Entidades;
using appNotificaciones.Datos.AccesoDatos;
namespace appNotificaciones.Negocios
{
    public class UsuarioNegocios
    {
        public static List<usuario> getUsuarios()
        {
            BaseDatosNotificaciones users = new BaseDatosNotificaciones();


            return users.getUsuarios();
        }

        public static usuario ObtenerUsuarioPorNombre(String nombreUsuario)
        {
            NotificacionesEntities db = new NotificacionesEntities();
            var usuario = db.usuario.FirstOrDefault(x => x.nombre_usuario == nombreUsuario );
            return usuario;
        }

        public static usuario ValidarLogin(String nombreUsuario, String password)
        {
            NotificacionesEntities db = new NotificacionesEntities();
            var usuario = db.usuario.FirstOrDefault(x => x.nombre_usuario == nombreUsuario && x.contrasenia == password);
            return usuario;
        }
    }
}
