using System;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using appNotificaciones.Entidades;

namespace appNotificaciones.Datos.AccesoDatos
{
    public class BaseDatosNotificaciones
    {


        public List<usuario> getUsuarios()
        {

            using (NotificacionesEntities db = new NotificacionesEntities())
            {
                return db.usuario.ToList();
            }

        }

        public List<notificaciones> getNotificaciones()
        {

            using (NotificacionesEntities db = new NotificacionesEntities())
            {
                return db.notificaciones.ToList();
            }

        }

        public List<notificaciones_usuarios> getNotificacionesUsuarios()
        {

            using (NotificacionesEntities db = new NotificacionesEntities())
            {
                return db.notificaciones_usuarios.ToList();
            }

        }



    }
}