<%@ Page Title="" Language="C#" MasterPageFile="~/MenuUsuario.master" AutoEventWireup="true" CodeBehind="RecuperarSenha.aspx.cs" Inherits="Vlaza.RecuperarSenha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTitulo" runat="server">
    Recuperar Senha
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-7 col-sm-7">
            <form class="form-horizontal form-without-legend" role="form">
                <div class="form-group">
                    <label for="email" class="col-lg-4 control-label">Email</label>
                    <div class="col-lg-8">
                        <input type="text" class="form-control" id="email">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-5">
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-4 col-sm-4 pull-right">
            <div class="form-info">
                <h2>Informação <em>Importante</em></h2>
                <p>Insera o email vinculado a sua conta. Clique en enviar para recever um email com o link de recuperação.</p>

                <button type="button" class="btn btn-default">More details</button>
            </div>
        </div>
    </div>
</asp:Content>
