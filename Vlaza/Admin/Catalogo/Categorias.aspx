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
                                <asp:LinkButton ID="lbReload" runat="server" CssClass="reload" OnClick="lbReload_Click"></asp:LinkButton>
                                <a href="javascript:;" class="remove"></a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="row">
                                <div class="col-md-8 ">
                                    <asp:TextBox ID="txtCategoria" runat="server" CssClass="form-control" placeholder="Nova Categoria" MaxLength="30">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Falta a Categoria" CssClass="required" ControlToValidate="txtCategoria" ValidationGroup="Categoria" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </div>

                                <div class="col-md-4">
                                    <asp:LinkButton ID="lbGuardar" runat="server" CssClass="btn btn-primary" OnClick="lbGuardar_Click" ValidationGroup="Categoria" Width="100%"><i class="fa fa-save"></i> Guardar</asp:LinkButton>
                                </div>
                            </div>
                            <hr />
                            <asp:ListView ID="lvCategorias" runat="server" DataSourceID="SqlDataSourceCategoria" DataKeyNames="Id_Categoria" OnItemCommand="lvCategorias_ItemCommand">


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

                                            <asp:Label Text='<%# Eval("Categoria") %>' runat="server" ID="CategoriaLabel" />

                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-sm" CommandName="Edit"><i class="fa fa-edit"></i></asp:LinkButton>
                                        </td>

                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server" style="width: 100%">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-hover">
                                                    <tr runat="server" style="">
                                                        <th runat="server">Categorias</th>
                                                        <th runat="server" style="width: 100px">Opções</th>

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
                                <EditItemTemplate>
                                    <tr style="">

                                        <td>
                                            <asp:TextBox ID="txtEditCat" runat="server" Text='<%# Eval("Categoria") %>' MaxLength="30" CssClass="form-control" ValidationGroup="EditCat"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Falta a Categoria" ControlToValidate="txtEditCat" Display="Dynamic" ValidationGroup="EditCat"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" ID="a" CssClass="btn btn-success btn-sm" CommandName="Update" CommandArgument='<%# Eval("Id_Categoria") %>' ValidationGroup="EditCat"><i class="fa fa-check"></i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="b" CssClass="btn btn-danger btn-sm" CommandName="Cancel"><i class="fa fa-ban"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceCategoria" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT * FROM [Tb_Categoria]" InsertCommand="INSERT INTO Tb_Categoria(Categoria, Id_Usuario) VALUES (@Categoria, @Id_Usuario)" UpdateCommand="UPDATE Tb_Categoria SET Categoria = @Categoria, Id_Usuario = @Id_Usuario, CMD = 'Update', Data = GETDATE() WHERE (Id_Categoria = @Id_Categoria)">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="txtCategoria" Name="Categoria" PropertyName="Text" />
                                    <asp:Parameter Name="Id_Usuario" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Categoria" />
                                    <asp:Parameter Name="Id_Usuario" />
                                    <asp:Parameter Name="Id_Categoria" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>

                    </div>
                </div>
                <%--<div class="col-md-7 col-sm-6">
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-list font-green-sharp"></i>
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
                                    <asp:TextBox ID="txtSubCat" runat="server" CssClass="form-control" ValidationGroup="SubCat" placeholder="Nova Sub-Categoria"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Falta a Sub-Categoria" ControlToValidate="txtSubCat" Display="Dynamic" ValidationGroup="SubCat" CssClass="required" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </div>
                                <div class="col-md-3">
                                    <asp:LinkButton ID="lbGuardarSub" runat="server" CssClass="btn btn-primary" ValidationGroup="SubCat" Width="100%" OnClick="lbGuardarSub_Click"><i class="fa fa-save"></i> Guardar</asp:LinkButton>

                                </div>
                            </div>
                            <hr />
                            <asp:ListView ID="lvSubCat" runat="server" DataSourceID="SqlDataSourceSubCat" DataKeyNames="Id_SubCategoria" OnItemCommand="lvSubCat_ItemCommand">

                                <EditItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:DropDownList ID="ddl" runat="server" DataSourceID="SqlDataSourceCategoria" DataTextField="Categoria" DataValueField="Id_Categoria" CssClass="form-control"></asp:DropDownList>

                                        </td>
                                        <td>
                                            <asp:TextBox Text='<%# Bind("SubCategoria") %>' runat="server" ID="SubCategoriaTextBox" ValidationGroup="EditSubCat" CssClass="form-control" /></td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Falta a Sub-Categoria" ControlToValidate="SubCategoriaTextBox" ValidationGroup="EditSubCat" CssClass="required" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <td>
                                            <asp:LinkButton runat="server" ID="aa" CssClass="btn btn-success btn-sm" CommandName="Update" CommandArgument='<%# Eval("Id_SubCategoria") %>' ValidationGroup="EditSubCat"><i class="fa fa-check"></i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="bb" CssClass="btn btn-danger btn-sm" CommandName="Cancel"><i class="fa fa-ban"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>
                                                <p><strong>Nenhuma SeubCategria Registada.</strong></p>
                                            </td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>

                                <ItemTemplate>
                                    <tr style="">
                                        
                                        <td>
                                            <asp:Label Text='<%# Eval("Categoria") %>' runat="server" ID="CategoriaLabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("SubCategoria") %>' runat="server" ID="SubCategoriaLabel" /></td>
                                        <td>
                                            <asp:LinkButton ID="A" runat="server" CommandName="Edit" CssClass="btn btn-primary btn-sm"><i class="fa fa-edit"></i></asp:LinkButton>

                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server" style="width: 100%">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-hover">
                                                    <tr runat="server" style="">
                                                        <th runat="server">Categoria</th>
                                                        <th runat="server">SubCategoria</th>
                                                        <th runat="server" style="width: 100px">Opções</th>
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

                            </asp:ListView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSourceSubCat" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT Tb_SubCategoria.Id_SubCategoria, Tb_SubCategoria.Id_Categoria, Tb_Categoria.Categoria, Tb_SubCategoria.SubCategoria FROM Tb_Categoria INNER JOIN Tb_SubCategoria ON Tb_Categoria.Id_Categoria = Tb_SubCategoria.Id_Categoria" InsertCommand="INSERT INTO Tb_SubCategoria(Id_Categoria, SubCategoria, Id_Usuario) VALUES (@Id_Cat, @SubCat, @Id_Usuario)" UpdateCommand="UPDATE Tb_SubCategoria SET Id_Categoria = @Id_Categoria, SubCategoria = @SubCategoria, Id_Usuario = @Id_Usuario, CMD = 'Update', Data = GETDATE() WHERE (Id_SubCategoria = @Id_SubCategoria)">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="ddlCategorias" Name="Id_Cat" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="txtSubCat" Name="SubCat" PropertyName="Text" />
                                    <asp:Parameter Name="Id_Usuario" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Id_Categoria" />
                                    <asp:Parameter Name="Id_SubCategoria" />
                                    <asp:Parameter Name="Id_Usuario" />
                                    <asp:Parameter Name="SubCategoria" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>--%>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <!-- END ALERTS PORTLET-->
</asp:Content>
