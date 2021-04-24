<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSalesUI.aspx.cs" Inherits="StockManagementSystemWebApp.UI.ViewSalesUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            height: 465px;
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
            width: 207px;
            text-align: right;
            height: 51px;
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

        .auto-style40 {
            height: 41px;
        }

        .auto-style41 {
            width: 7px;
            height: 41px;
        }

        .auto-style42 {
            width: 207px;
            height: 41px;
        }

        .auto-style43 {
            width: 415px;
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
            width: 415px;
            height: 51px;
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
            width: 415px;
            text-align: center;
        }

        .auto-style54 {
            width: 415px;
        }

        .auto-style57 {
            color: #FFFFFF;
            text-decoration: none;
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
            font-size: larger;
        }

        .auto-style68 {
            color: #FFFFFF;
        }

        .auto-style69 {
            width: 10px;
            height: 31px;
            text-align: center;
        }

        .auto-style71 {
            width: 7px;
            height: 31px;
        }

        .auto-style73 {
            width: 415px;
            height: 31px;
        }

        .auto-style74 {
            height: 31px;
        }
        .auto-style75 {
            color: #FF0000;
        }
        .auto-style76 {
            width: 207px;
            height: 31px;
        }
        .auto-style77 {
            height: 234px;
            width: 207px;
            text-align: center;
        }
        .auto-style78 {
            width: 207px
        }
    </style>
    <link href="../Contents/bootstrap.css" rel="stylesheet" />
    <link href="../Contents/bootstrap-datepicker3.min.css" rel="stylesheet" />
</head>
<body style="height: 73px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>View Sales Between Two Dates</strong></td>
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
                                <asp:LinkButton ID="categorySetupLinkButton" runat="server" CssClass="auto-style57" OnClick="categorySetupLinkButton_OnClick">Category Setup</asp:LinkButton>
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
                                <asp:LinkButton ID="viewSalesLinkButton" runat="server" CssClass="auto-style68" OnClick="viewSalesLinkButton_Click">View Sales</asp:LinkButton>
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
                                <%--<asp:HiddenField ID="idHiddenField" runat="server" Value='<%#Eval("Id") %>' OnValueChanged="idHiddenField_ValueChanged" />--%>
                                </strong>
                            </td>
                            <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label1" runat="server" Text="From Date" CssClass="auto-style48"></asp:Label>
                                </strong>
                                &nbsp;
                                <asp:TextBox ID="fromDatePicker" runat="server" Width="180px"></asp:TextBox>
                                <br />
                            </td>
                            <td class="auto-style44"></td>
                            <td class="auto-style44"></td>
                            <td class="auto-style44"></td>
                        </tr>
                        <tr>
                            <td class="auto-style62"></td>
                            <td class="auto-style44"></td>
                            <td class="auto-style45"></td>
                            <td class="auto-style31">
                                <strong>
                                <%--<asp:HiddenField ID="idHiddenField" runat="server" Value='<%#Eval("Id") %>' OnValueChanged="idHiddenField_ValueChanged" />--%>
                                </strong>
                            </td>
                            <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong><asp:Label ID="Label2" runat="server" Text="To Date" CssClass="auto-style48"></asp:Label>
                                </strong>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="toDatePicker" runat="server" Width="180px"></asp:TextBox>
                                <br />
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
                            <td class="auto-style43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>
                                    <asp:Button ID="searchButton" runat="server" Text="Search" Width="105px" CssClass="auto-style49" OnClick="searchButton_Click"  />
                                </strong>
                            </td>
                            <td class="auto-style40"></td>
                            <td class="auto-style40"></td>
                            <td class="auto-style40"></td>
                        </tr>
                        <tr>
                            <td class="auto-style69"></td>
                            <td class="auto-style74"></td>
                            <td class="auto-style71"></td>
                            <td class="auto-style76"></td>
                            <td class="auto-style73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="outputLabel" runat="server" CssClass="auto-style75"></asp:Label>
                            </td>
                            <td class="auto-style74"></td>
                            <td class="auto-style74"></td>
                        </tr>
                        <tr>
                            <td class="auto-style66"></td>
                            <td class="auto-style33"></td>
                            <td class="auto-style34"></td>
                            <td class="auto-style77">&nbsp;</td>
                            <td class="auto-style51"><strong>
                                <asp:GridView ID="viewSalesGridView" runat="server" AutoGenerateColumns="False" Height="216px" Width="291px" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style67">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="SL">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Company">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("Company") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Item">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<%#Eval("Item") %>'></asp:Label>
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
                            </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style78">&nbsp;</td>
                            <td class="auto-style54">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style78">&nbsp;</td>
                            <td class="auto-style54">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style65">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style28">&nbsp;</td>
                            <td class="auto-style78">&nbsp;</td>
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
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/bootstrap-datepicker.min.js"></script>
    <script>
        $('#fromDatePicker').datepicker({
            daysOfWeekHighlighted: "5",
            autoclose: true,
            todayHighlight: true
        });
        $('#toDatePicker').datepicker({
            daysOfWeekHighlighted: "5",
            autoclose: true,
            todayHighlight: true
        });
    </script>
</body>
</html>
