<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.MainUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Contents/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 423px;
            background-color: #003366;
        }
        .auto-style3 {
            text-align: center;
            background-color: #00FFCC;
            height: 103px;
        }
        .auto-style5 {
            color: #FFFFFF;
            font-size: larger;
            text-decoration: none;
        }
        .auto-style6 {
            text-align: center;
            background-color: #003300;
            height: 101px;
        }
        .auto-style7 {
            text-align: center;
            background-color: #CC0000;
            height: 101px;
        }
        .auto-style8 {
            text-align: center;
            background-color: #FFCC00;
            height: 93px;
        }
        .auto-style9 {
            text-align: center;
            background-color: #CC0066;
            height: 93px;
        }
        .auto-style10 {
            text-align: center;
            background-color: #666699;
            height: 103px;
        }
        .auto-style12 {
            text-align: center;
            background-color: #3399FF;
        }
        .auto-style13 {
            text-align: center;
            background-color: #003366;
        }
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            height: 84px;
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
            background-color: #666699;
        }
        .auto-style16 {
            background-color: #333333;
        }
        .auto-style17 {
            color: #FFFFFF;
            font-size: larger;
        }
        </style>
</head>
<body style="height: 36px">
    <form id="form1" runat="server" class="auto-style16">
        <table class="auto-style14">
            <tr>
                <td class="auto-style15">
                    <asp:Image ID="Image1" runat="server" Height="39px" ImageAlign="AbsBottom" ImageUrl="../images/stockmanagement.jpg" Width="85px" />
                    Stock Management System</td>
            </tr>
        </table>
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">
                    <p>
                        <strong>
                        <asp:HyperLink ID="categorySetupLinkButton" runat="server" CssClass="auto-style5" NavigateUrl="CategoryUI.aspx">Category Setup</asp:HyperLink>
                        </strong>
                    </p>
                </td>
                <td class="auto-style7"><strong>
                    <asp:HyperLink ID="companySetupLinkButton" runat="server" CssClass="auto-style17" NavigateUrl="CompanyUI.aspx">Company Setup</asp:HyperLink>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>
                    <asp:HyperLink ID="itemSetupLinkButton" runat="server" CssClass="auto-style5" NavigateUrl="ItemUI.aspx">Item Setup</asp:HyperLink>
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:HyperLink ID="stockInLinkButton" runat="server" CssClass="auto-style5" NavigateUrl="StockInUI.aspx">Stock In</asp:HyperLink>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>
                    <asp:HyperLink ID="stockOutLinkButton" runat="server" CssClass="auto-style5" NavigateUrl="StockOutUI.aspx">Stock Out</asp:HyperLink>
                    </strong></td>
                <td class="auto-style10"><strong>
                    <asp:HyperLink ID="searchViewLinkButton" runat="server" CssClass="auto-style5" NavigateUrl="SearchViewUI.aspx">Search &amp; View</asp:HyperLink>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>
                    <asp:HyperLink ID="viewSalesLinkButton" runat="server" CssClass="auto-style5" NavigateUrl="ViewSalesUI.aspx">View Sales</asp:HyperLink>
                    </strong></td>
                <td class="auto-style13"><strong>
                    <asp:HyperLink ID="logOutLinkButton" runat="server" CssClass="auto-style5" NavigateUrl="UserLoginUI.aspx">Log Out</asp:HyperLink>
                    </strong></td>
            </tr>
        </table>
    </form>
    <script src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
