<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="appNotificaciones.Presentación.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<link rel="stylesheet" href="Style.css"/>
  
</head>
<body>
	<div class="container">
		<form id="formLogin" runat="server" class="formLogin">
			<div class="card">
				<asp:Image Class="imgLogoSAIG" ID="logoSAIG" runat="server" imageUrl="https://saig.campeche.gob.mx/images/Gob_2021/logo/SAIG_HORIZONTAL.png"/>
				<h1>Iniciar Sesión</h1>
				<div class="inputBox">
					<span>Nombre de usuario</span><br/>
					<asp:TextBox class="input" ID="inUser" runat="server" type="text"  name="user" placeholder="Nombre de usuario"/>
				</div>
				<br />
				<div class="inputBox">
					<span>Contraseña</span><br/>
					<asp:TextBox class="input" ID="inPassword" runat="server"  name="password" type="password" placeholder="contraseña"/>
				</div>
				<br />
				<asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
				<div class="inputBox">
					<asp:Button class="btnIniciarSesion" ID="IniciarSesion" runat="server" Height="39px" OnClick="Iniciar_SesionClick" Text="Iniciar Sesion"/>
				</div>
				
			</div>
		</form>
	</div>


</body>
</html>
