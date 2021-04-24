<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockInUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.Demo1" %>

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
            height: 396px;
            margin-top: 0px;
            margin-bottom: 17px;
        }
        .auto-style23 {
            width: 98%;
            height: 390px;
            margin-right: 3px;
            background-color: #800000;
        }
        .auto-style24 {
            width: 137px;
            background-color: #800000;
        }
        .auto-style25 {
            width: 131px;
            background-color: #333333;
            height: 392px;
        }
        .auto-style26 {
            width: 137px;
            height: 48px;
            text-align: left;
            background-color: #800000;
        }
        .auto-style27 {
            width: 100%;
            height: 383px;
            margin-top: 0px;
            background-color: #333333;
            margin-left: 0px;
        }
        .auto-style28 {
            width: 7px;
        }
        .auto-style31 {
            width: 356px;
            text-align: right;
            height: 51px;
        }
        .auto-style32 {
            width: 492px;
            height: 34px;
            text-align: left;
        }
        .auto-style37 {
            height: 34px;
        }
        .auto-style38 {
            width: 7px;
            height: 34px;
        }
        .auto-style39 {
            width: 356px;
            height: 34px;
            text-align: right;
        }
        .auto-style42 {
            width: 356px;
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
            width: 492px;
            height: 51px;
        }
        .auto-style48 {
            font-size: larger;
            color: #FFFFFF;
        }
        .auto-style54 {
            width: 492px;
        }
        .auto-style55 {
            width: 356px;
        }
        .auto-style56 {
            height: 19px;
            width: 356px;
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
            width: 137px;
            text-align: justify;
            background-color: #800000;
        }
        .auto-style61 {
            background-color: #333333;
            height: 392px;
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
            width: 492px;
            height: 35px;
            text-align: left;
        }
        .auto-style76 {
            margin-top: 10px;
        }
        .auto-style80 {
            width: 356px;
            height: 47px;
        }
        .auto-style125 {
            height: 47px;
            width: 10px;
        }
        .auto-style126 {
            height: 47px;
        }
        .auto-style127 {
            width: 7px;
            height: 47px;
        }
        .auto-style128 {
            width: 492px;
            height: 47px;
        }
        .auto-style136 {
            width: 492px;
            height: 33px;
        }
        .auto-style137 {
            height: 33px;
            width: 10px;
        }
        .auto-style138 {
            height: 33px;
        }
        .auto-style139 {
            width: 7px;
            height: 33px;
        }
        .auto-style140 {
            width: 356px;
            height: 33px;
            text-align: right;
        }
        .auto-style144 {
            width: 492px;
            height: 19px;
        }
        .auto-style145 {
            height: 19px;
            width: 10px;
        }
        .auto-style146 {
            height: 19px;
        }
        .auto-style147 {
            width: 7px;
            height: 19px;
        }
        .auto-style148 {
            color: #FF0000;
        }
    </style>
</head>
<body style="height: 73px">
    <form id="form1" runat="server">
        <asp:HiddenField ID="categoryHiddenField" runat="server" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Stock In</strong></td>
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
                                <asp:LinkButton ID="itemSetupLinkButton" runat="server" CssClass="auto-style57" OnClick="itemSetupLinkButton_Click">Item Setup</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"><strong>
                                <asp:LinkButton ID="stockInLinkButton" runat="server" CssClass="auto-style59" OnClick="stockInLinkButton_Click">Stock In</asp:LinkButton>
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
                                    <asp:Label ID="Label1" runat="server" Text="Company" CssClass="auto-style48"></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="companyDropDownList" runat="server" Height="22px" Width="185px" OnSelectedIndexChanged="companyDropDownList_SelectedIndexChanged" AutoPostBack="True">
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
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style48" Text="Item"></asp:Label>
                                </strong></td>
                            <td class="auto-style32">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="itemDropDownList" runat="server" Height="22px" Width="186px" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="itemDropDownList_SelectedIndexChanged">
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
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style48" Text="Reorder Level"></asp:Label>
                                </strong></td>
                            <td class="auto-style75">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="reorderLevelTextBox" runat="server" Width="185px" Enabled="False" Height="22px"></asp:TextBox>
                            </td>
                            <td class="auto-style73"></td>
                            <td class="auto-style73"></td>
                            <td class="auto-style73"></td>
                        </tr>
                        <tr>
                            <td class="auto-style137"></td>
                            <td class="auto-style138"></td>
                            <td class="auto-style139"></td>
                            <td class="auto-style140"><strong>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style48" Text="Available Quantity"></asp:Label>
                                </strong></td>
                            <td class="auto-style136">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="availableQuantityTextBox" runat="server" Width="185px" Enabled="False" Height="22px"></asp:TextBox>
                            </td>
                            <td class="auto-style138"></td>
                            <td class="auto-style138"></td>
                        </tr>
                        <tr>
                            <td class="auto-style145"></td>
                            <td class="auto-style146"></td>
                            <td class="auto-style147"></td>
                            <td class="auto-style56"><strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style48" Text="Stock In Quantity"></asp:Label>
                                </strong></td>
                            <td class="auto-style144">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="stockInTextBox" runat="server" CssClass="auto-style76" Width="185px" Height="22px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style125"></td>
                            <td class="auto-style126"></td>
                            <td class="auto-style127"></td>
                            <td class="auto-style80"></td>
                            <td class="auto-style128">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" Width="78px" style="height: 26px" />
                            </td>
                            <td class="auto-style126"></td>
                            <td class="auto-style126"></td>
                            <td class="auto-style126"></td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style55">&nbsp;</td>
                            <td class="auto-style54">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="outputLabel" runat="server" CssClass="auto-style148"></asp:Label>
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
                stockInTextBox: {
                    required: true
                }
            },
            messages: {
                stockInTextBox: {
                    required: "Please enter a valid quantity"
                }
            }
        });
    </script>
</body>
</html>
