<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form_per_rol.aspx.cs" Inherits="view_formularios_form_per_rol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Rol&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom_rol" DataValueField="id_rol">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" SelectCommand="SELECT * FROM [tbl_rol]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id_modulo" DataSourceID="SqlDataSource2" Height="183px" Width="265px">
                <Columns>
                    <asp:BoundField DataField="id_modulo" HeaderText="id_modulo" ReadOnly="True" SortExpression="id_modulo" />
                    <asp:BoundField DataField="nom_modulo" HeaderText="nom_modulo" SortExpression="nom_modulo" />
                    <asp:TemplateField HeaderText="consedido">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT * FROM [tbl_modulos]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" />
            <br />
        </div>
    </form>
</body>
</html>
