<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="appNotificaciones.Presentación.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>

        <asp:Label ID="LblDatosUsuario" runat="server" ></asp:Label>
        
        <asp:Label ID="LblDatosNotificaciones" runat="server"></asp:Label>
    
 
        <asp:Table ID="TablaNotificaciones" runat="server" Height="197px" Width="347px">
            
        </asp:Table>


    
    
 
    </form>
</body>
</html>
