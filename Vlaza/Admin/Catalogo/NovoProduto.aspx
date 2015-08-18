<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayOut.Master" AutoEventWireup="true" CodeBehind="NovoProduto.aspx.cs" Inherits="Vlaza.Admin.Catalogo.NovoProduto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitulo" runat="server">
    Cadastro de Productos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSubTitulo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <div class="col-md-8">
            <div class="portlet light">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-tag font-green-sharp"></i>
                        <span class="caption-subject font-green-sharp bold uppercase">Novo Producto</span>
                        <span class="caption-helper">a cadastrar</span>
                    </div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"></a>

                        <a href="javascript:;" class="reload"></a>
                        <a href="javascript:;" class="remove"></a>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="form-horizontal form-row-seperated">
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Nome do Produto</label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" placeholder="Nome do Produto"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Falta o Nome do Produto" ControlToValidate="txtNome" Display="Dynamic" CssClass="Vali"><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Descripção</label>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtDesc" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine" placeholder="Descripção"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Falta a Descripção" ControlToValidate="txtDesc" Display="Dynamic" CssClass="Vali"><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Categoria</label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddlCategoria" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="Categoria" DataValueField="Id_Categoria" CssClass="form-control"></asp:DropDownList>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Imagen</label>
                                <div class="col-md-4">
                                    <asp:FileUpload ID="fuPic" runat="server" CssClass="form-control" />


                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Falta a Fotografia" ControlToValidate="fuPic" Display="Dynamic" CssClass="Vali"><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>

                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3">Data de Fabrico</label>

                                <div class="col-md-4">
                                    <asp:TextBox ID="txtDataFab" CssClass="form-control" runat="server" TextMode="Month"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Falta a Data de Fabrico" ControlToValidate="txtDataFab" Display="Dynamic" CssClass="Vali"><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3">Data de Validade</label>

                                <div class="col-md-4">
                                    <asp:TextBox ID="txtDataValidade" CssClass="form-control" runat="server" TextMode="Month"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Falta a Data de Validade." ControlToValidate="txtDataValidade" Display="Dynamic" CssClass="Vali"><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>

                            </div>


                            <div class="form-group">
                                <label class="control-label col-md-3">Preço de Compra</label>
                                <div class="col-md-2">
                                    <asp:TextBox ID="txtPrecoCompra" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Falta o Preço de Compra." ControlToValidate="txtPrecoCompra" Display="Dynamic" CssClass="Vali"><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>

                            </div>


                            <div class="form-group">
                                <label class="control-label col-md-3">Preço de Venda</label>
                                <div class="col-md-2">
                                    <asp:TextBox ID="txtPrecoVenda" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>

                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Falta o Preço de Venda." ControlToValidate="txtPrecoVenda" Display="Dynamic" CssClass="Vali"><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="Vali" />
                            </div>

                            <%--  <div class="form-group">
                                <label class="control-label col-md-3">City</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">State</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Post Code</label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group last">
                                <label class="control-label col-md-3">Country</label>
                                <div class="col-md-9">
                                    <select class="form-control">
                                    </select>
                                </div>
                            </div>--%>
                        </div>

                        <div class="form-actions">
                            <div class="row">
                                <div class="col-md-offset-3 col-md-9" style="text-align: right">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success" OnClick="LinkButton1_Click"><i class="fa fa-check" ></i>&nbsp;Guardar</asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" ValidationGroup="eraser"><i class="fa fa-eraser"></i>&nbsp;Limpar</asp:LinkButton>
                                    <%--<button type="submit" class="btn green"><i class="fa fa-pencil"></i>1Edit</button>
                                    <button type="button" class="btn default">Cancel</button>--%>
                                </div>
                            </div>
                        </div>

                        <asp:SqlDataSource runat="server" ID="SqlDataSourceCategoria" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT [Id_Categoria], [Categoria] FROM [Tb_Categoria]" InsertCommand="INSERT INTO Tb_Produto(Nome, Descricao, Id_Categoria, PathPic, PrecoCompra, PrecoVenda, DataFabrico, DataValidade, Id_Usuario, CMD) VALUES (@Nome, @Descricao, @Id_Categoria, @PathPic, @PrecoCompra, @PrecoVenda, @DataFabrico, @DataValidade, @Id_Usuario, 'Insert')">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtDesc" Name="Descricao" PropertyName="Text" />
                                <asp:ControlParameter ControlID="ddlCategoria" Name="Id_Categoria" PropertyName="SelectedValue" />
                                <asp:Parameter Name="PathPic" />
                                <asp:ControlParameter ControlID="txtPrecoCompra" Name="PrecoCompra" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtPrecoVenda" Name="PrecoVenda" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtDataFab" Name="DataFabrico" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txtDataValidade" Name="DataValidade" PropertyName="Text" />
                                <asp:Parameter Name="Id_Usuario" />
                            </InsertParameters>
                        </asp:SqlDataSource>

                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
