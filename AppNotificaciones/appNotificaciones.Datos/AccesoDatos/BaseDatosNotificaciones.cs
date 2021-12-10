using System;
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

    }
}


