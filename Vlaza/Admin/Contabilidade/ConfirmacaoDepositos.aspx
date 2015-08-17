<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayOut.Master" AutoEventWireup="true" CodeBehind="ConfirmacaoDepositos.aspx.cs" Inherits="Vlaza.Admin.Contabilidade.ConfirmacaoDepositos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitulo" runat="server">
    Confirmação de Depositos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSubTitulo" runat="server">
    em contas de Clientes
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="server">
    <div class="portlet light">
        <div class="portlet-title">
            <div class="caption">
                <i class="fa fa-money font-green-sharp"></i>
                <span class="caption-subject font-green-sharp bold uppercase">Depositos</span>
                <span class="caption-helper"></span>
            </div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
                
                <a href="javascript:;" class="reload" runat="server" onserverclick="Unnamed_ServerClick"></a>
                <a href="javascript:;" class="remove"></a>
            </div>
        </div>
        <div class="portlet-body">
        </div>
    </div>
</asp:Content>
