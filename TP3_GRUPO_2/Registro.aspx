<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP3_GRUPO_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
                        <asp:TextBox ID="txtLocalidad" CssClass="diseñoTxtBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Ingrese una localidad"></asp:RequiredFieldValidator>
                    </td>
                </tr>
             </table>
        </div>
    </form>
</body>
</html>
