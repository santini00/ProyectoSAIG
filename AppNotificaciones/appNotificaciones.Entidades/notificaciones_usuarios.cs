//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace appNotificaciones.Entidades
{
    using System;
    using System.Collections.Generic;
    
    public partial class notificaciones_usuarios
    {
        public int id { get; set; }
        public Nullable<int> id_usuarios { get; set; }
        public Nullable<int> id_notificaciones { get; set; }
    
        public virtual notificaciones notificaciones { get; set; }
        public virtual usuario usuario { get; set; }
    }
}
