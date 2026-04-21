<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP3_GRUPO_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td><h1>Localidades</h1></td>
                </tr>
                <tr>
                    <td><b>Nombre de la localidad: </b></td>
                    <td style="padding-left: 20px">
                        <asp:TextBox ID="txtLocalidad" CssClass="diseñoTxtBox" runat="server" Height="23px" Width="130px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Ingrese una localidad">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="padding: 20px 0px 20px 20px">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar Localidad" Width="120px" Height="22px" />
                    </td>
                    <td></td>
                </tr>
                <tr><td></td><td><b>Usuarios</b></td><td></td></tr>
                <tr><td>Nombre usuario: </td><td style="padding-left: 20px">
                    <asp:TextBox ID="txtusuario" runat="server" Height="23px" Width="130px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="rfvusuario" runat="server" ControlToValidate="txtusuario" ErrorMessage="Ingrese un usuario">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revUsuario" runat="server" ControlToValidate="txtusuario" ErrorMessage="Ingrese caracteres validos" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                    </td></tr>
                <tr>
                    <td>Contraseña: </td><td style="padding-left: 20px">
                        <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                    </td>
                </tr>


             </table>
            <br />
        </div>
    </form>
</body>
</html>

