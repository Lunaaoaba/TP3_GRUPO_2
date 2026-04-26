<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="TP3_GRUPO_2.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
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
        form{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }
        h1 {
            font-size: 70px;
            font-family: Arial, sans-serif;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td><h1>Bienvenido al Inicio.aspx</h1></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
