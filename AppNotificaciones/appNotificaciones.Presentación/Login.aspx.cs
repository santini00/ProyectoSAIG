using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using appNotificaciones.Entidades;
using appNotificaciones.Negocios;

namespace appNotificaciones.Presentación
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Iniciar_SesionClick(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(inUser.Text.Trim()) && !string.IsNullOrEmpty(inPassword.Text.Trim()))
            {
                usuario user = UsuarioNegocios.ValidarLogin(inUser.Text.Trim(), inPassword.Text.Trim());

                if(user != null)
                {
                    Session["usuario"] = user;
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    LabelError.Text = "Usuario y/o contraseña incorrectos";
                }
            }
            else
            {
                LabelError.Text = "Ningun campo puede estar vacio imbecil";
            }
            


          
        }
    }
}