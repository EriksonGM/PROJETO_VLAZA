<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayOut.Master" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="Vlaza.Admin.Categorias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitulo" runat="server">
    Configuração de Categorias
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSubTitulo" runat="server">
    e Subcategorias
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="col-md-5 col-sm-6">
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa  fa-list font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">Categorias</span>
                                <span class="caption-helper">para Produtos</span>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"></a>

                                <%--<a href="javascript:;" class="reload"></a>--%>
                                <asp:LinkButton ID="lbReload" runat="server" CssClass="reload"></asp:LinkButton>
                                <a href="javascript:;" class="remove"></a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="row">
                                <div class="col-md-8 ">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" CssClass="required" ControlToValidate="txtCategoria" ValidationGroup="Categoria"></asp:RequiredFieldValidator><asp:TextBox ID="txtCategoria" runat="server" CssClass="form-control" placeholder="Nova Categoria" MaxLength="30">

                                    </asp:TextBox>
                                    <br />

                                </div>

                                <div class="col-md-4">
                                    <asp:LinkButton ID="lbGuardar" runat="server" CssClass="btn btn-primary form-control" OnClick="lbGuardar_Click" ValidationGroup="Categoria"><i class="fa fa-save"></i> Guardar</asp:LinkButton>
                                </div>
                            </div>
                            <hr />
                            <asp:ListView ID="lvCategorias" runat="server" DataSourceID="SqlDataSourceCategoria" DataKeyNames="Id_Categoria">
                                <%-- <AlternatingItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Label Text='<%# Eval("Id_Categoria") %>' runat="server" ID="Id_CategoriaLabel" /></td>
                                <td>
                                    <asp:Label Text='<%# Eval("Categoria") %>' runat="server" ID="CategoriaLabel" /></td>
                            </tr>
                        </AlternatingItemTemplate>--%>
                                <EditItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                                        </td>
                                        <td>
                                            <asp:Label Text='<%# Eval("Id_Categoria") %>' runat="server" ID="Id_CategoriaLabel1" /></td>
                                        <td>
                                            <asp:TextBox Text='<%# Bind("Categoria") %>' runat="server" ID="CategoriaTextBox" /></td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>
                                                <p style="text-align: center">
                                                    <strong>Nenhuma Categoria Registada.</strong>
                                                </p>

                                            </td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>

                                <ItemTemplate>
                                    <tr style="">
                                        <td>
                                            <%--<asp:Label Text='<%# Eval("Id_Categoria") %>' runat="server" ID="Id_CategoriaLabel" />--%>
                                            <!-- Single button -->
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Action <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Action</a></li>
                                                    <li><a href="#">Another action</a></li>
                                                    <li><a href="#">Something else here</a></li>
                                                    <li role="separator" class="divider"></li>
                                                    <li><a href="#">Separated link</a></li>
                                                </ul>
                                            </div>

                                            </div>
                                        </td>
                                        <td>
                                            <asp:Label Text='<%# Eval("Categoria") %>' runat="server" ID="CategoriaLabel" /></td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server" style="width: 100%">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-hover">
                                                    <tr runat="server" style="">
                                                        <th runat="server"></th>
                                                        <th runat="server">Categoria</th>
                                                    </tr>
                                                    <tr runat="server" id="itemPlaceholder"></tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style=""></td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label Text='<%# Eval("Id_Categoria") %>' runat="server" ID="Id_CategoriaLabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("Categoria") %>' runat="server" ID="CategoriaLabel" /></td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceCategoria" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT * FROM [Tb_Categoria]" InsertCommand="INSERT INTO Tb_Categoria(Categoria, Id_Usuario) VALUES (@Categoria, @Id_Usuario)">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="txtCategoria" Name="Categoria" PropertyName="Text" />
                                    <asp:Parameter Name="Id_Usuario" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </div>

                    </div>
                </div>
                <div class="col-md-7 col-sm-6">
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-cogs font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">Sub-Categorias</span>
                                <span class="caption-helper">para Produtos</span>
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse"></a>
                                <a href="javascript:;" class="reload"></a>
                                <a href="javascript:;" class="remove"></a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceCategoria" DataTextField="Categoria" DataValueField="Id_Categoria" ToolTip="Categoria de Productos"></asp:DropDownList>
                                    <br />
                                </div>
                                <div class="col-md-5">
                                    <asp:TextBox ID="txtSubCategoria" runat="server" CssClass="form-control" ValidationGroup="SubCategoria" placeholder="Nova Sub-Categoria"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="col-md-3">
                                    <asp:LinkButton ID="lbGuardarSub" runat="server" CssClass="btn btn-primary" ValidationGroup="SubCategoria"><i class="fa fa-save"></i> Guardar</asp:LinkButton>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <!-- END ALERTS PORTLET-->
</asp:Content>
