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
            BaseDatosNotificaciones a = new BaseDatosNotificaciones();


            return a.getUsuarios();
        }
    }
}
