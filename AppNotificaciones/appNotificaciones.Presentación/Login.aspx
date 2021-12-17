<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="appNotificaciones.Presentación.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
</head>
<body>

    <div class="container">

        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <asp:Image ID="Image1" runat="server" height="150px"  imageUrl="https://saig.campeche.gob.mx/images/Gob_2021/logo/SAIG_HORIZONTAL.png"/></br>
				<FONT  FACE="impact" align="center" SIZE=25>Login</FONT>
                <div class="card-body" >
				                <form>
					                <div class="input-group form-group">
						                <div class="input-group-prepend">
							                <span class="input-group-text"><i class="fas fa-user" ></i></span>
						                </div>
						                <input type="text" class="form-control" placeholder="Nombre Usuario" ID="Tbusuario">
						
					                </div>
					                <div class="input-group form-group">
						                <div class="input-group-prepend">
							                <span class="input-group-text"><i class="fas fa-key"></i></span>
						                </div>
						                <input type="password" class="form-control" ID="Tbcontrasena" placeholder="Contraseña">
					                </div>
					                <div class="row align-items-center remember">
						                <input type="checkbox">Remember Me
					                </div>
					                <div class="form-group">
						                <input type="submit" value="Iniciar Sesion" class="btn float-right login_btn">
					                </div>
				                </form>
			                </div>

            </div>
            
        </div>
    </div>


</body>
</html>
