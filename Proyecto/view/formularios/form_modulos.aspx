<%@ Page Title="" Language="C#" MasterPageFile="~/view/formularios/master/MasterPage.master" AutoEventWireup="true" CodeFile="form_modulos.aspx.cs" Inherits="view_form_modulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 35%;
    }
    .auto-style2 {
        width: 137px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" placeholder="ID Modulo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" placeholder="Nombre Modulo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="guardar" />
            </td>
        </tr>
    </table>
</p>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id_modulo" DataSourceID="SqlDataSource1" Height="147px" Width="226px" GridLines="Horizontal">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="id_modulo" HeaderText="id_modulo" ReadOnly="True" SortExpression="id_modulo" />
        <asp:BoundField DataField="nom_modulo" HeaderText="nom_modulo" SortExpression="nom_modulo" />
    </Columns>
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <SortedAscendingCellStyle BackColor="#F4F4FD" />
    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
    <SortedDescendingCellStyle BackColor="#D8D8F0" />
    <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" DeleteCommand="DELETE FROM [tbl_modulos] WHERE [id_modulo] = @id_modulo" InsertCommand="INSERT INTO [tbl_modulos] ([id_modulo], [nom_modulo]) VALUES (@id_modulo, @nom_modulo)" SelectCommand="SELECT * FROM [tbl_modulos]" UpdateCommand="UPDATE [tbl_modulos] SET [nom_modulo] = @nom_modulo WHERE [id_modulo] = @id_modulo">
    <DeleteParameters>
        <asp:Parameter Name="id_modulo" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="id_modulo" Type="Int32" />
        <asp:Parameter Name="nom_modulo" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nom_modulo" Type="String" />
        <asp:Parameter Name="id_modulo" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
<p>
</p>
</asp:Content>

