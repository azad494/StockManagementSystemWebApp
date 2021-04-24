<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label.error {
            color: red;
        }
    </style>
    <link href="../Contents/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 68px;
        }
        .auto-style2 {
            font-size: xx-large;
            text-align: center;
            height: 63px;
            color: #FFFFFF;
            background-color: #800000;
        }
        .auto-style22 {
            width: 100%;
            height: 423px;
        }
        .auto-style23 {
            width: 98%;
            height: 390px;
            margin-right: 3px;
            background-color: #800000;
        }
        .auto-style24 {
            width: 108px;
            background-color: #800000;
        }
        .auto-style25 {
            width: 131px;
            background-color: #800000;
        }
        .auto-style26 {
            width: 108px;
            height: 48px;
            text-align: left;
            background-color: #800000;
        }
        .auto-style27 {
            width: 100%;
            height: 383px;
            margin-top: 0px;
            background-color: #333333;
        }
        .auto-style28 {
            width: 7px;
        }
        .auto-style31 {
            width: 337px;
            text-align: right;
            height: 51px;
        }
        .auto-style32 {
            width: 531px;
            height: 34px;
            text-align: left;
        }
        .auto-style33 {
            height: 47px;
        }
        .auto-style34 {
            width: 7px;
            height: 47px;
        }
        .auto-style37 {
            height: 34px;
        }
        .auto-style38 {
            width: 7px;
            height: 34px;
        }
        .auto-style39 {
            width: 337px;
            height: 34px;
            text-align: right;
        }
        .auto-style42 {
            width: 337px;
            height: 35px;
            text-align: right;
        }
        .auto-style44 {
            height: 51px;
        }
        .auto-style45 {
            width: 7px;
            height: 51px;
        }
        .auto-style46 {
            width: 531px;
            height: 51px;
        }
        .auto-style48 {
            font-size: larger;
            color: #FFFFFF;
        }
        .auto-style51 {
            height: 47px;
            width: 531px;
        }
        .auto-style54 {
            width: 531px;
        }
        .auto-style55 {
            width: 337px;
        }
        .auto-style56 {
            height: 47px;
            width: 337px;
            text-align: center;
        }
        .auto-style57 {
            color: #FFFFFF;
            text-decoration: none;
        }
        .auto-style59 {
            color: #FFFFFF;
        }
        .auto-style60 {
            width: 108px;
            text-align: justify;
            background-color: #800000;
        }
        .auto-style61 {
            background-color: #333333;
        }
        .auto-style62 {
            height: 51px;
            width: 10px;
        }
        .auto-style63 {
            height: 34px;
            width: 10px;
        }
        .auto-style65 {
            width: 10px;
        }
        .auto-style66 {
            height: 47px;
            width: 10px;
        }
        .auto-style67 {
            width: 10px;
            height: 42px;
        }
        .auto-style68 {
            height: 42px;
        }
        .auto-style69 {
            width: 7px;
            height: 42px;
        }
        .auto-style70 {
            width: 337px;
            height: 42px;
            text-align: right;
        }
        .auto-style71 {
            width: 531px;
            height: 42px;
        }
        .auto-style72 {
            height: 35px;
            width: 10px;
        }
        .auto-style73 {
            height: 35px;
        }
        .auto-style74 {
            width: 7px;
            height: 35px;
        }
        .auto-style75 {
            width: 531px;
            height: 35px;
            text-align: left;
        }
        .auto-style76 {
            color: #FF0000;
        }
    </style>
</head>
<body style="height: 73px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Item Setup</strong></td>
            </tr>
        </table>
        <table class="auto-style22">
            <tr>
                <td class="auto-style25">
                    <table class="auto-style23">
                        <tr>
                            <td class="auto-style26"><strong>
                                <asp:LinkButton ID="homeLinkButton" runat="server" CssClass="auto-style57" OnClick="homeLinkButton_Click">Home</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style60"><strong>
                                <asp:LinkButton ID="categorySetupLinkButton" runat="server" CssClass="auto-style57" OnClick="catagorySetupLinkButton_OnClick">Category Setup</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style60"><strong>
                                <asp:LinkButton ID="companySetupLinkButton" runat="server" CssClass="auto-style57" OnClick="companySetupLinkButton_Click">Company Setup</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"><strong>
                                <asp:LinkButton ID="itemSetupLinkButton" runat="server" CssClass="auto-style59" OnClick="itemSetupLinkButton_Click">Item Setup</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"><strong>
                                <asp:LinkButton ID="stockInLinkButton" runat="server" CssClass="auto-style57" OnClick="stockInLinkButton_Click">Stock In</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"><strong>
                                <asp:LinkButton ID="stockOutLinkButton" runat="server" CssClass="auto-style57" OnClick="stockOutLinkButton_Click">Stock Out</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"><strong>
                                <asp:LinkButton ID="searchViewLinkButton" runat="server" CssClass="auto-style57" OnClick="searchViewLinkButton_Click">Search &amp; View</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"><strong>
                                <asp:LinkButton ID="viewSalesLinkButton" runat="server" CssClass="auto-style57" OnClick="viewSalesLinkButton_Click">View Sales</asp:LinkButton>
                            </strong></td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style61">
                    <table class="auto-style27">
                        <tr>
                            <td class="auto-style62"></td>
                            <td class="auto-style44"></td>
                            <td class="auto-style45"></td>
                            <td class="auto-style31">
                                <strong>
                                    <asp:Label ID="Label1" runat="server" Text="Category" CssClass="auto-style48"></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="categoryDropDownList" runat="server" Height="22px" Width="185px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style44"></td>
                            <td class="auto-style44"></td>
                            <td class="auto-style44"></td>
                        </tr>
                        <tr>
                            <td class="auto-style63"></td>
                            <td class="auto-style37"></td>
                            <td class="auto-style38"></td>
                            <td class="auto-style39"><strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style48" Text="Company"></asp:Label>
                                </strong></td>
                            <td class="auto-style32">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="companyDropDownList" runat="server" Height="22px" Width="186px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style37"></td>
                            <td class="auto-style37"></td>
                            <td class="auto-style37"></td>
                        </tr>
                        <tr>
                            <td class="auto-style72"></td>
                            <td class="auto-style73"></td>
                            <td class="auto-style74"></td>
                            <td class="auto-style42"><strong>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style48" Text="Item Name"></asp:Label>
                                </strong></td>
                            <td class="auto-style75">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="itemNameTextBox" runat="server" Width="185px" Height="22px"></asp:TextBox>
                            </td>
                            <td class="auto-style73"></td>
                            <td class="auto-style73"></td>
                            <td class="auto-style73"></td>
                        </tr>
                        <tr>
                            <td class="auto-style67"></td>
                            <td class="auto-style68"></td>
                            <td class="auto-style69"></td>
                            <td class="auto-style70"><strong>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style48" Text="Reorder Level"></asp:Label>
                                </strong></td>
                            <td class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="reorderLevelTextBox" runat="server" Width="185px" Height="22px"></asp:TextBox>
                            </td>
                            <td class="auto-style68"></td>
                            <td class="auto-style68"></td>
                        </tr>
                        <tr>
                            <td class="auto-style66"></td>
                            <td class="auto-style33"></td>
                            <td class="auto-style34"></td>
                            <td class="auto-style56"></td>
                            <td class="auto-style51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" Width="78px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style55">&nbsp;</td>
                            <td class="auto-style54">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="outputLabel" runat="server" CssClass="auto-style76"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style55">&nbsp;</td>
                            <td class="auto-style54">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style55">&nbsp;</td>
                            <td class="auto-style54">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/jquery.validate.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script>
        $("#form1").validate({
            rules: {
                itemNameTextBox: {
                    required: true,
                    minlength: 2
                }
            },
            messages: {
                itemNameTextBox: {
                    required: "Please enter item name",
                    minlength: "Item name must consist of at least 2 characters"
                }
            }
        });
    </script>
</body>
</html>
