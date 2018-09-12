<%@ Page Title="" Language="C#" MasterPageFile="~/view/formularios/master/MasterPage.master" AutoEventWireup="true" CodeFile="form_permisos.aspx.cs" Inherits="view_formularios_permisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 35%;
            height: 51px;
        }
        .auto-style3 {
            width: 4px;
        }
        .auto-style4 {
            width: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
 
         <table class="auto-style2">
        <tr>
            <td class="auto-style4">ID PERMISO</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1"  placeholder="ID PERMISO" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">PERMISO</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" placeholder="PERMISO" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Generar Permiso" />
            </td>
        </tr>
    </table>
    


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_permiso" DataSourceID="SqlDataSource1" AllowPaging="True" Height="123px" Width="290px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id_permiso" HeaderText="id_permiso" ReadOnly="True" SortExpression="id_permiso" />
            <asp:BoundField DataField="permiso" HeaderText="permiso" SortExpression="permiso" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homelunchConnectionString %>" DeleteCommand="DELETE FROM [tbl_permisos] WHERE [id_permiso] = @id_permiso" InsertCommand="INSERT INTO [tbl_permisos] ([id_permiso], [permiso]) VALUES (@id_permiso, @permiso)" SelectCommand="SELECT * FROM [tbl_permisos]" UpdateCommand="UPDATE [tbl_permisos] SET [permiso] = @permiso WHERE [id_permiso] = @id_permiso">
        <DeleteParameters>
            <asp:Parameter Name="id_permiso" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_permiso" Type="Int32" />
            <asp:Parameter Name="permiso" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="permiso" Type="String" />
            <asp:Parameter Name="id_permiso" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


