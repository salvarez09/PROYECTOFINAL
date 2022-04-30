﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROYECTOFINAL.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<link rel="stylesheet" type="text/css" href="/css/logincss.css" media="screen" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Iniciar Sesion</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Registrarse</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Usuario</label>
					<asp:TextBox ID="tusuario" class="input" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tusuario" ForeColor="#FF0066">Ingrese un usuario</asp:RequiredFieldValidator>
				</div>
				<div class="group">
					<label for="pass" class="label">Contraseña</label>
					<asp:TextBox ID="tclave" type="password" class="input" data-type="password" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="tusuario" ForeColor="#FF0066">Digite una contraseña</asp:RequiredFieldValidator>
				</div>
				<div class="group">
					<asp:Button ID="bingresar" class="button" value="Sign In" runat="server" Text="Ingresar" OnClick="bingresar_Click1" />
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
			</div>
			<div class="sign-up-htm">
				<div class="group">
					<label for="user" class="label">Usuario</label>
					<input id="user" type="text" class="input">
				</div>
				<div class="group">
					<label for="pass" class="label">Contraseña</label>
					<asp:TextBox ID="tclavereg" class="input" data-type="password" placeholder="Digite contraseña" runat="server"></asp:TextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Repita la contraseña</label>
					<asp:TextBox ID="tconfirmar" class="input" data-type="password" placeholder="Repita la contraseña" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="tclavereg" ControlToValidate="tconfirmar" ForeColor="#FF0066">Las contraseñas son distintas</asp:CompareValidator>
				</div>
				<div class="group">
					<label for="pass" class="label">Correo electronico</label>
					<asp:TextBox ID="tcorreo" class="input" placeholder="Digite correo electronico" runat="server"></asp:TextBox>
				</div>
				<div>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="tcorreo" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Digite un correo valido</asp:RegularExpressionValidator>
				</div>
				<div class="group">
					<asp:Button ID="Bregistrarse" class="button" value="Sign Up" runat="server" Text="Registrase" OnClick="Bregistrarse_Click" />
			
				</div>
				<div class="hr">
                    <asp:Label ID="mensaje" runat="server" ForeColor="#FF0066"></asp:Label>
                </div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
			</div>
		</div>
	</div>
</div>
    </form>
</body>
</html>
