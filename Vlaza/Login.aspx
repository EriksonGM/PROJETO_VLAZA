<%@ Page Title="" Language="C#" MasterPageFile="~/MenuUsuario.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vlaza.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitulo" runat="server">
    Iniciar Sessão
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-7 col-sm-7">
            <div class="form-horizontal form-without-legend" role="form">
                <div class="form-group">
                    <label for="email" class="col-lg-4 control-label">Email
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ValidationGroup="Login" CssClass="require"></asp:RequiredFieldValidator></label>
                    <div class="col-lg-8">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                        <%--<input type="text" class="form-control" id="email">--%>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-lg-4 control-label">Password
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtPass" ValidationGroup="Login" CssClass="require"></asp:RequiredFieldValidator></label>
                    <div class="col-lg-8">
                        <%--<input type="text" class="form-control" id="password">--%>
                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align:center">
                <asp:Label ID="lblErro" runat="server" Text="Email o senha errada, tente novamente." CssClass="text-center" style="margin-bottom:25px" ForeColor="Red" Visible="False"></asp:Label>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-offset-4 padding-left-0">

                        <a href="/RecuperarSenha.aspx">Esqueceu a senha?</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                        <%--<button type="submit" class="btn btn-primary" runat="server" onserverclick="lbEntrar_Click" validationgroup="Login">Iniciar Sessão</button>--%>
                        <asp:Button ID="btnEntrar" runat="server" Text="Iniciar Sessão" CssClass="btn btn-primary" ValidationGroup="Login" OnClick="btnEntrar_Click" />
                        <%--<asp:LinkButton ID="lbEntrar" CssClass="btn btn-primary" runat="server" OnClick="lbEntrar_Click">Iniciar Sessão</asp:LinkButton>--%>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-4 col-sm-4 pull-right">
            <div class="form-info">
                <h2>Informação <em>Importante</em></h2>
                <p>Garantimos que os seus dados estão sendo geridos com a maior professionalidade e a sua informação sera sempre privada.</p>


            </div>
        </div>
    </div>

</asp:Content>
