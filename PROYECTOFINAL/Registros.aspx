<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="PROYECTOFINAL.Registros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="/css/botones.css"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            color: #FF33CC;
        }
        .auto-style2 {
            color: #0099CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><strong>PRESUPUESTO FAMILIAR&nbsp;&nbsp; </strong></span>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Bvolver" runat="server" BackColor="#CC66FF" OnClick="Bvolver_Click" Text="Volver" Width="109px" />
            <br />
            <span class="auto-style2">
            <strong>Registro de Datos:</strong></span><br />
            <br />
            Usuario:
            <asp:TextBox ID="tusuarior" runat="server" Width="165px"></asp:TextBox>
            &nbsp; Clave
            <asp:TextBox ID="tclaver" runat="server"></asp:TextBox>
            <br />
            <br />
            Fecha:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tfechar" runat="server" Width="160px"></asp:TextBox>
            <br />
            <br />
            Tipo:<br />
            <asp:DropDownList ID="Dtipor" runat="server" Height="38px" Width="1154px">
                <asp:ListItem>Ingreso</asp:ListItem>
                <asp:ListItem>Gasto</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Descripcion:<br />
            <asp:TextBox ID="tdescripcionr" runat="server" Height="31px" Width="1147px"></asp:TextBox>
            <br />
            <br />
            Monto:<br />
            <asp:TextBox ID="tmontor" runat="server" Height="31px" Width="1147px"></asp:TextBox>
            <br />
            <br />
            Correo:<br />
            <asp:TextBox ID="tcorreor" runat="server" Height="31px" Width="1147px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Bagregar" class="button button1" runat="server" Height="70px" Text="Agregar" Width="380px" OnClick="Bagregar_Click" />
&nbsp;
            <asp:Button ID="Beliminar" class="button button2" runat="server" Height="70px" Text="Eliminar" Width="382px" OnClick="Beliminar_Click" />
&nbsp;
            <asp:Button ID="Bactualizar" class="button button3" runat="server" Height="70px" Text="Actualizar" Width="372px" OnClick="Bactualizar_Click" />
&nbsp;
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1164px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
         
               
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
