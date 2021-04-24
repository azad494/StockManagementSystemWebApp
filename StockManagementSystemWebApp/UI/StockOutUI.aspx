<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockOutUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.StockOutUI" %>

<%@ Import Namespace="System.ComponentModel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label.error {
            color: red;
        }
    </style>
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
            width: 102%;
            height: 501px;
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
            width: 297px;
            text-align: right;
            height: 51px;
        }

        .auto-style32 {
            width: 424px;
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
            width: 297px;
            height: 34px;
            text-align: right;
        }

        .auto-style42 {
            width: 297px;
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
            width: 424px;
            height: 51px;
        }

        .auto-style48 {
            font-size: larger;
            color: #FFFFFF;
        }

        .auto-style54 {
            width: 424px;
        }

        .auto-style55 {
            width: 297px;
        }

        .auto-style56 {
            width: 297px;
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
            width: 424px;
            height: 35px;
            text-align: left;
        }

        .auto-style76 {
            margin-top: 18px;
        }

        .auto-style80 {
            width: 297px;
            height: 37px;
        }

        .auto-style81 {
            width: 10px;
            height: 37px;
        }

        .auto-style82 {
            height: 37px;
        }

        .auto-style83 {
            width: 7px;
            height: 37px;
        }

        .auto-style84 {
            width: 424px;
            height: 37px;
        }

        .auto-style108 {
            width: 424px;
            height: 39px;
        }

        .auto-style109 {
            height: 39px;
            width: 10px;
        }

        .auto-style110 {
            height: 39px;
        }

        .auto-style111 {
            width: 7px;
            height: 39px;
        }

        .auto-style112 {
            width: 297px;
            height: 39px;
            text-align: right;
        }

        .auto-style113 {
            width: 100%;
        }

        .auto-style115 {
            font-size: larger;
            margin-left: 0px;
        }

        .auto-style117 {
            width: 169px;
        }

        .auto-style118 {
            width: 515px;
            text-align: center;
        }

        .auto-style119 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style120 {
            color: #FF0000;
        }
    </style>
    <link href="../Contents/bootstrap.css" rel="stylesheet" />
</head>
<body style="height: 73px">
    <form id="form1" runat="server">
        <asp:HiddenField ID="categoryHiddenField" runat="server" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Stock Out</strong></td>
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
                                <asp:LinkButton ID="stockInLinkButton" runat="server" CssClass="auto-style57" OnClick="stockInLinkButton_Click">Stock In</asp:LinkButton>
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style24"><strong>
                                <asp:LinkButton ID="stockOutLinkButton" runat="server" CssClass="auto-style59" OnClick="stockOutLinkButton_Click1">Stock Out</asp:LinkButton>
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
                            <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                            <td class="auto-style75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="reorderLevelTextBox" runat="server" Width="185px" Enabled="False" Height="22px"></asp:TextBox>
                            </td>
                            <td class="auto-style73"></td>
                            <td class="auto-style73"></td>
                            <td class="auto-style73"></td>
                        </tr>
                        <tr>
                            <td class="auto-style109"></td>
                            <td class="auto-style110"></td>
                            <td class="auto-style111"></td>
                            <td class="auto-style112"><strong>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style48" Text="Available Quantity"></asp:Label>
                            </strong></td>
                            <td class="auto-style108">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="availableQuantityTextBox" runat="server" Width="185px" Enabled="False" Height="22px"></asp:TextBox>
                            </td>
                            <td class="auto-style110"></td>
                            <td class="auto-style110"></td>
                        </tr>
                        <tr>
                            <td class="auto-style65"></td>
                            <td></td>
                            <td class="auto-style28"></td>
                            <td class="auto-style56"><strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style48" Text="Stock Out Quantity"></asp:Label>
                            </strong></td>
                            <td class="auto-style54">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="stockOutTextBox" runat="server" CssClass="auto-style76" Width="185px" Height="22px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style81"></td>
                            <td class="auto-style82"></td>
                            <td class="auto-style83"></td>
                            <td class="auto-style80"></td>
                            <td class="auto-style84">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                                <asp:Button ID="addButton" runat="server" Text="Add" Width="74px" OnClick="addButton_Click" />
                            </td>
                            <td class="auto-style82"></td>
                            <td class="auto-style82"></td>
                            <td class="auto-style82"></td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style55">&nbsp;</td>
                            <td class="auto-style54">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="outputLabel" runat="server" CssClass="auto-style120"></asp:Label>
                                <br />
                                <strong>
                                <asp:GridView ID="stockOutGridViewList" runat="server" Width="249px" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style115" ForeColor="#333333" GridLines="None" Height="54px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="SL">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Item">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("ItemName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Company">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("CompanyName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Quantity">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("Quantity") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="sellButton" runat="server" Text="Sell" Width="68px" OnClick="sellButton_Click" />
                                <asp:Button ID="damageButton" runat="server" Text="Damage" OnClick="damageButton_Click" />
                                <asp:Button ID="lostButton" runat="server" Text="Lost" Width="61px" OnClick="lostButton_Click" />
                                        </strong>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <table class="auto-style119">
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <table class="auto-style113">
                                    <tr>
                                        <td class="auto-style117">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style118"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </strong></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;
                                <%--<asp:Button ID="Button3" runat="server" Text="Button" />--%>&nbsp;&nbsp;
                                <br />
                            </td>
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
                stockOutTextBox: {
                    required: true
                }
            },
            messages: {
                stockOutTextBox: {
                    required: "Please enter a valid quantity"
                }
            }
        });
    </script>
</body>
</html>
