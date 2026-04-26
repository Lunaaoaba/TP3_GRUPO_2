<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TP3_GRUPO_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            background: linear-gradient(135deg, #ffd6e7, #c3f0ca, #c5e8ff, #f9e4b7, #e8d5f5, #ffd6e7);
            background-size: 400% 400%;
            animation: gradientShift 10s ease infinite;
        }

        @keyframes gradientShift {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

        @keyframes floatBubble {
            0% {
                transform: translateY(100vh) scale(0);
                opacity: 0
            }

            10% {
                opacity: 0.6;
            }

            90% {
                transform: translateY(-10vh) scale(1.2);
                opacity: 0;
            }
        }
        form {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }
        #contenedor {
            display: block;
            padding-left: 200px;
        }
        div{
            font-family: Arial, Helvetica, sans-serif;
        }
        .button {
            text-align: center;
            border: 1px solid black;
            border-radius: 6px;
        }
        .textbox {
            padding-left: 8px;
            border: 1px solid black;
            border-radius: 6px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="contenedor">
            <table>
                <tr>
                    <td><h1>Localidades</h1></td>
                </tr>
                <tr>
                    <td>Nombre de la localidad: </td>
                    <td style="padding-left: 20px">
                        <asp:TextBox ID="txtLocalidad" CssClass="textbox" runat="server" Height="22px" Width="170px" ValidationGroup="Grupo1"></asp:TextBox>
                    </td>
                    <td style="padding-left: 20px">
                        <asp:CustomValidator ID="CvTxtLocalidades" runat="server" ControlToValidate="txtLocalidad" OnServerValidate="CvTxtLocalidades_ServerValidate" ValidationGroup="Grupo1" ErrorMessage="La localidad ya existe">La localidad ya existe</asp:CustomValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Ingrese una localidad" ValidationGroup="Grupo1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="padding: 20px 0px 20px 20px">
                        <asp:Button ID="btnGuardarLocalidad" CssClass="button" runat="server" OnClick="btnGuardarLocalidad_Click" Text="Guardar Localidad" Width="122px" Height="22px" ValidationGroup="Grupo1" />
                    </td>
                    <td></td>
                </tr>
                <tr><td><h1><b>Usuarios</b></h1></td></tr>
                <tr><td>Nombre usuario: </td><td style="padding-left: 20px">
                    <asp:TextBox ID="txtusuario" runat="server" Height="22px" Width="170px" ValidationGroup="Grupo2" CssClass="textbox"></asp:TextBox>
                    </td><td style="padding-left: 20px">
                        <asp:RequiredFieldValidator ID="rfvusuario" runat="server" ControlToValidate="txtusuario" ErrorMessage="Ingrese un usuario" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revUsuario" runat="server" ControlToValidate="txtusuario" ErrorMessage="Ingrese caracteres validos" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="Grupo2">*</asp:RegularExpressionValidator>
                    </td></tr>
                <tr>
                    <td>Contraseña: </td><td style="padding-left: 20px">
                        <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" Width="170px" Height="22px" ValidationGroup="Grupo2" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td style="padding-left: 20px">
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContrasena" ErrorMessage="Debe ingresar una contraseña" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>Repetir Contraseña:</td><td style="padding-left: 20px">

                    <asp:TextBox ID="txtRepetirContraseña" runat="server" TextMode="Password" Width="170px" Height="22px" ValidationGroup="Grupo2" CssClass="textbox"></asp:TextBox>

                  </td>
                <td style="padding-left: 20px">
                    <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" ErrorMessage="Ingresar contraseña de nuevo" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator><br />
                    <asp:CompareValidator ID="cvRepetirContraseña" runat="server" ControlToCompare="txtContrasena" ControlToValidate="txtRepetirContraseña" ErrorMessage="Debe ingresar la misma contraseña" ValidationGroup="Grupo2">*</asp:CompareValidator>
                    </td>
                </tr>
                 <tr>
                     <td>Correo Electronico:</td> <td style="padding-left:20px"> 
                     <asp:TextBox ID="txtCorreoElectronico" runat="server" Width="170px" Height="22px" ValidationGroup="Grupo2" CssClass="textbox"></asp:TextBox>
                     </td>
                     <td style="padding-left: 20px"> 
                         <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Ingresar Correo Electronico" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator><br />
                         <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Ingresar un Correo valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Grupo2">*</asp:RegularExpressionValidator>
                     </td>
                 </tr>   
                 <tr>
                     <td>CP:</td> <td style="padding-left:20px"> 
                     <asp:TextBox ID="txtcp" runat="server" Width="170px" Height="22px" ValidationGroup="Grupo2" CssClass="textbox"></asp:TextBox>
                     
                     </td>
                     <td style="padding-left: 20px"> 
                         <asp:RegularExpressionValidator ID="revcp" runat="server" ControlToValidate="txtcp" ErrorMessage="Ingrese caracteres validos en un rango de 4 digitos" ValidationExpression="^\d{4}$" ValidationGroup="Grupo2">*</asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtcp" ErrorMessage="Debe ingresar un codigo postal" ValidationGroup="Grupo2">*</asp:RequiredFieldValidator>
                     </td>
                 </tr> 
                <tr><td>Localidades: </td><td style="padding-left:20px">
                    <asp:DropDownList ID="ddlLocalidades" runat="server" Height="22px" Width="178px" AppendDataBoundItems="true" ValidationGroup="Grupo2" CssClass="textbox">
                    </asp:DropDownList></td>
                    <td style="padding-left: 20px"> 

                        <asp:RequiredFieldValidator ID="rfvDdlLocalidades" runat="server" ControlToValidate="ddlLocalidades" InitialValue="0" ValidationGroup="Grupo2" ErrorMessage="Debe de seleccionar una localidad">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td></td><td style="padding: 30px 0px 0px 20px">
                    <asp:Button ID="btnEnviar" CssClass="button" runat="server" Width="100px" Text="Enviar" OnClick="btnEnviar_Click" ValidationGroup="Grupo2" />
                    </td><td style="padding: 30px 0px 0px 20px">
                        <b><asp:Label ID="lblMensaje" runat="server"></asp:Label></b>
                    </td>
                </tr>
                <tr><td> 
                        <asp:Button ID="btInicio" CssClass="button" runat="server" OnClick="btInicio_Click" Text="Ir a inicio .aspx" />
                    </td><td></td><td></td></tr>
             </table>
        </div>
        <div>
            <table>
                <tr><td>
                        <asp:ValidationSummary ID="ValidationSummary3" runat="server" ValidationGroup="Grupo1" ShowMessageBox="True" ShowSummary="False" />
                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="Grupo2" ShowMessageBox="True" ShowSummary="False" />
                    </td></tr>
            </table>
        </div>
    </form>
</body>
</html>

