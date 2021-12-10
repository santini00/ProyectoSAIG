<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="appNotificaciones.Presentación.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <div>
              <asp:Label ID="Lbltitulo" runat="server" Text="Login"></asp:Label></br>
              <asp:Label ID="Lblusuario" runat="server" Text="Usuario: "></asp:Label>
              <asp:TextBox ID="Tbusuario" runat="server"></asp:TextBox></br>
              <asp:Label ID="Lblcontrasena" runat="server" Text="Contraseña: "></asp:Label>
              <asp:TextBox ID="Tbcontrasena" runat="server"></asp:TextBox></br>
               </br>
              <asp:Button ID="Btniniciosesion" runat="server" Text="Iniciar Sesión" />
           </div>

        </div>
 
               
        
    </form>
</body>
</html>
