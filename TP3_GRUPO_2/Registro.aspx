<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP3_GRUPO_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
        }
        form{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }
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
                    <td>Nombre de la localidad: </td>
                    <td style="padding-left: 20px">
                        <asp:TextBox ID="txtLocalidad" CssClass="diseñoTxtBox" runat="server" Height="22px" Width="170px"></asp:TextBox>
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
                <tr><td><h1><b>Usuarios</b></h1></td><td></td><td></td></tr>
                <tr><td>Nombre usuario: </td><td style="padding-left: 20px">
                    <asp:TextBox ID="txtusuario" runat="server" Height="22px" Width="170px"></asp:TextBox>
                    </td><td>
                        <asp:RequiredFieldValidator ID="rfvusuario" runat="server" ControlToValidate="txtusuario" ErrorMessage="Ingrese un usuario">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revUsuario" runat="server" ControlToValidate="txtusuario" ErrorMessage="Ingrese caracteres validos" ValidationExpression="^[a-zA-Z]+$">*</asp:RegularExpressionValidator>
                    </td></tr>
                <tr>
                    <td>Contraseña: </td><td style="padding-left: 20px">
                        <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" Width="170px" Height="22px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContrasena" ErrorMessage="Debe ingresar una contraseña">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Repetir Contraseña:</td><td style="padding-left: 20px">

                    <asp:TextBox ID="txtRepetirContraseña" runat="server" TextMode="Password" Width="170px" Height="22px"></asp:TextBox>

                  </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" ErrorMessage="Ingresar contraseña de nuevo">*</asp:RequiredFieldValidator><br />
                    <asp:CompareValidator ID="cvRepetirContraseña" runat="server" ControlToCompare="txtContrasena" ControlToValidate="txtRepetirContraseña" ErrorMessage="Debe ingresar la misma contraseña">*</asp:CompareValidator>
                    </td>
                </tr>
                 <tr>
                     <td>Correo Electronico:</td> <td style="padding-left:20px"> 
                     <asp:TextBox ID="txtCorreoElectronico" runat="server" Width="170px" Height="22px"></asp:TextBox>
                     </td>
                     <td> 
                         <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Ingresar Correo Electronico">*</asp:RequiredFieldValidator><br />
                         <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Ingresar un Correo valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                     </td>
                 </tr>   
                 <tr>
                     <td>CP:</td> <td style="padding-left:20px"> 
                     <asp:TextBox ID="txtcp" runat="server" Width="170px" Height="22px"></asp:TextBox>
                     
                     </td>
                     <td> 
                         <asp:RegularExpressionValidator ID="revcp" runat="server" ControlToValidate="txtcp" ErrorMessage="Ingrese caracteres validos en un rango de 4 digitos" ValidationExpression="^\d{4}$">*</asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtcp">*</asp:RequiredFieldValidator>
                     </td>
                 </tr> 
                <tr><td>Localidades: </td><td style="padding-left:20px">
                    <asp:DropDownList ID="ddlLocalidades" runat="server" Height="22px" Width="178px"></asp:DropDownList></td>
                </tr>
             </table>
        </div>
    </form>
</body>
</html>

