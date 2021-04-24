<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.CompanyUI" %>

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
            width: 318px;
            text-align: right;
            height: 51px;
        }
        .auto-style32 {
            width: 405px;
            height: 34px;
            text-align: left;
        }
        .auto-style33 {
            height: 234px;
        }
        .auto-style34 {
            width: 7px;
            height: 234px;
        }
        .auto-style37 {
            height: 34px;
        }
        .auto-style38 {
            width: 7px;
            height: 34px;
        }
        .auto-style39 {
            width: 318px;
            height: 34px;
        }
        .auto-style40 {
            height: 41px;
        }
        .auto-style41 {
            width: 7px;
            height: 41px;
        }
        .auto-style42 {
            width: 318px;
            height: 41px;
        }
        .auto-style43 {
            width: 405px;
            height: 41px;
            text-align: left;
        }
        .auto-style44 {
            height: 51px;
        }
        .auto-style45 {
            width: 7px;
            height: 51px;
        }
        .auto-style46 {
            width: 405px;
            height: 51px;
        }
        .auto-style47 {
            font-size: larger;
            margin-top: 0px;
            background-color: #800000;
        }
        .auto-style48 {
            font-size: larger;
            color: #FFFFFF;
        }
        .auto-style49 {
            font-weight: bold;
        }
        .auto-style51 {
            height: 234px;
            width: 405px;
            text-align: left;
        }
        .auto-style54 {
            width: 405px;
        }
        .auto-style55 {
            width: 318px;
        }
        .auto-style56 {
            height: 234px;
            width: 318px;
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
            background-color: #800000;
        }
        .auto-style62 {
            height: 51px;
            width: 10px;
        }
        .auto-style63 {
            height: 34px;
            width: 10px;
        }
        .auto-style64 {
            height: 41px;
            width: 10px;
        }
        .auto-style65 {
            width: 10px;
        }
        .auto-style66 {
            height: 234px;
            width: 10px;
        }
        .auto-style67 {
            color: #FF0000;
        }
    </style>
</head>
<body style="height: 73px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Company Setup</strong></td>
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
                                <asp:LinkButton ID="companySetupLinkButton" runat="server" CssClass="auto-style59" OnClick="companySetupLinkButton_Click">Company Setup</asp:LinkButton>
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
                                    <asp:Label ID="Label1" runat="server" Text="Name" CssClass="auto-style48"></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="companyNameTextBox" runat="server" Height="22px" Width="185px"></asp:TextBox>
                            </td>
                            <td class="auto-style44"></td>
                            <td class="auto-style44"></td>
                            <td class="auto-style44"></td>
                        </tr>
                        <tr>
                            <td class="auto-style63"></td>
                            <td class="auto-style37"></td>
                            <td class="auto-style38"></td>
                            <td class="auto-style39"></td>
                            <td class="auto-style32">
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" Width="105px" CssClass="auto-style49" />
                                </strong>
                            </td>
                            <td class="auto-style37"></td>
                            <td class="auto-style37"></td>
                            <td class="auto-style37"></td>
                        </tr>
                        <tr>
                            <td class="auto-style64"></td>
                            <td class="auto-style40"></td>
                            <td class="auto-style41"></td>
                            <td class="auto-style42"></td>
                            <td class="auto-style43">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="outputLabel" runat="server" CssClass="auto-style67"></asp:Label>
                            </td>
                            <td class="auto-style40"></td>
                            <td class="auto-style40"></td>
                            <td class="auto-style40"></td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style55">&nbsp;</td>
                            <td class="auto-style54">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style66"></td>
                            <td class="auto-style33"></td>
                            <td class="auto-style34"></td>
                            <td class="auto-style56">&nbsp;</td>
                            <td class="auto-style51"><strong>
                                <asp:GridView ID="companyListGridView" runat="server" CellPadding="4" CssClass="auto-style47" ForeColor="#333333" GridLines="None" Height="216px" Width="232px" AutoGenerateColumns="False">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="SL">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("Name") %>'></asp:Label>
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
                            </strong></td>
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
                companyNameTextBox: {
                    required: true,
                    minlength: 2
                }
            },
            messages: {
                companyNameTextBox: {
                    required: "Please enter company name",
                    minlength: "Company name must consist of at least 2 characters"
                }
            }
        });
    </script>
</body>
</html>
