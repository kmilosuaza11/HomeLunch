<%@ Page Title="" Language="C#" MasterPageFile="~/view/formularios/master/MasterPage.master" AutoEventWireup="true" CodeFile="form_roles.aspx.cs" Inherits="view_formularios_form_roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 34%;
        }
        .auto-style2 {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">ID ROL</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">NOMBRE ROL</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Guardar Rol" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id_rol" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="131px" Width="279px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_rol" HeaderText="id_rol" ReadOnly="True" SortExpression="id_rol" />
                <asp:BoundField DataField="nom_rol" HeaderText="nom_rol" SortExpression="nom_rol" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" DeleteCommand="DELETE FROM [tbl_rol] WHERE [id_rol] = @id_rol" InsertCommand="INSERT INTO [tbl_rol] ([id_rol], [nom_rol]) VALUES (@id_rol, @nom_rol)" SelectCommand="SELECT * FROM [tbl_rol]" UpdateCommand="UPDATE [tbl_rol] SET [nom_rol] = @nom_rol WHERE [id_rol] = @id_rol">
            <DeleteParameters>
                <asp:Parameter Name="id_rol" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_rol" Type="Int32" />
                <asp:Parameter Name="nom_rol" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nom_rol" Type="String" />
                <asp:Parameter Name="id_rol" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

