<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLoginUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.UserLoginUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label.error {
            color: red;
        }
    </style>
    <link href="../Contents/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 59px;
        }
        .auto-style3 {
            font-size: xx-large;
            height: 57px;
            text-align: center;
            background-color: #800000;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 100%;
            height: 179px;
            background-color: #333333;
        }
        .auto-style7 {
            font-size: larger;
            color: #FFFFFF;
        }
        .auto-style10 {
            width: 449px;
            background-color: #333333;
        }
        .auto-style12 {
            text-align: right;
            width: 333px;
            background-color: #333333;
        }
        .auto-style14 {
            width: 279px;
        }
        .auto-style15 {
            width: 449px;
            text-align: left;
        }
        .auto-style16 {
            width: 333px;
        }
        .auto-style18 {
            font-weight: bold;
        }
        .auto-style19 {
            width: 449px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="83px" ImageAlign="Middle" ImageUrl="../images/login_logo.jpg" Width="87px" />
                    <span class="auto-style4"><strong>&nbsp;Adminstrator Login</strong></span></td>
            </tr>
        </table>
        <p class="auto-style5">
            &nbsp;</p>
        <p class="auto-style5">
            &nbsp;</p>
        <p class="auto-style5">
            &nbsp;</p>
        <table class="auto-style6">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="Username"></asp:Label>
                    </strong></td>
                <td class="auto-style10">&nbsp;<asp:TextBox ID="userNameTextBox" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style12"><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Password"></asp:Label>
                    </strong></td>
                <td class="auto-style10">&nbsp;<asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:Button ID="loginButton" runat="server" CssClass="auto-style18" Height="24px" OnClick="loginButton_Click1" Text="Login" Width="80px" />
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style19">&nbsp;<strong><asp:Label ID="outputLabel" runat="server" CssClass="auto-style4"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/jquery.validate.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
    <script>
        $("#form1").validate({
            rules: {
                userNameTextBox: {
                    required: true,
                    minlength: 2
                },
                passwordTextBox: {
                    required: true,
                    minlength: 5
                }      
            },
            messages: {
                userNameTextBox: {
                    required: "Please enter a username",
                    minlength: "Your username must consist of at least 2 characters"
                },
                passwordTextBox: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 5 characters long"
                }
            }
        });

    </script>
</body>
</html>
