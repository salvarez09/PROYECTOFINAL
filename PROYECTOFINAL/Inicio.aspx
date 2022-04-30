<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="PROYECTOFINAL.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: large;
            color: #33CCCC;
        }
        .auto-style2 {
            color: #FF9900;
        }
        .auto-style3 {
            width: 385px;
            height: 348px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>BIENVENIDO A EL PRESUPUESTO FAMILIAR DE LA FAMILIA ALVAREZ CASTRO<br />
            <br />
            <img alt="" class="auto-style3" src="imagenes/3039813.png" /><br />
            <br />
            <span class="auto-style2">Seleccione el tipo de tramite que desea realizar:<br />
            <br />
            </span>
            <asp:Button ID="Bregistrarp" runat="server" BackColor="#FF99FF" BorderColor="#00FFCC" ForeColor="Black" Height="61px" OnClick="Bregistrarp_Click" Text="Registar" Width="155px" />
&nbsp;
            <asp:Button ID="Breporte" runat="server" BackColor="#FF99CC" BorderColor="Aqua" ForeColor="Black" Height="61px" OnClick="Breporte_Click" Text="Reportes" Width="154px" />
            </strong>
        </div>
    </form>
</body>
</html>
