<%@ Page Title="" Language="C#" MasterPageFile="~/view/formularios/master/MasterPage.master" AutoEventWireup="true" CodeFile="contacto.aspx.cs" Inherits="view_formularios_contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-sm-5 col-sm-offset-1">
                <h2 class="">Envio de correo en ASP con Boostrap</h2>

                <div class="form-group">
                    <label>Nombre</label>
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Telefono</label>
                    <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Asunto</label>
                    <asp:TextBox ID="txtAsunto" CssClass="form-control" runat="server" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Mensaje</label>
                    <asp:TextBox ID="txtMensaje" CssClass="form-control" runat="server" TextMode="MultiLine" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label CssClass="error" ID="Labelerror" runat="server"></asp:Label>
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Enviar Mensaje" />
                </div>
            </div>
        </div>

    </div>

</asp:Content>

