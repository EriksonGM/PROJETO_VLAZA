<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminLayOut.Master" AutoEventWireup="true" CodeBehind="Atributos.aspx.cs" Inherits="Vlaza.Admin.Catalogo.Atributos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitulo" runat="server">
    Atributos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSubTitulo" runat="server">
    a aplicar aos produtos
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
                                <span class="caption-subject font-green-sharp bold uppercase">Atributos</span>
                                <span class="caption-helper"></span>
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
                                    <asp:TextBox ID="txtAtributo" runat="server" CssClass="form-control" placeholder="Novo Atributo" MaxLength="30">
                                    </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Falta o Atributo" CssClass="required" ControlToValidate="txtAtributo" ValidationGroup="Atributo" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>

                                <div class="col-md-4">
                                    <asp:LinkButton ID="lbGuardar" runat="server" CssClass="btn btn-primary" ValidationGroup="Atributo" Width="100%" OnClick="lbGuardar_Click"><i class="fa fa-save"></i> Guardar</asp:LinkButton>
                                </div>
                            </div>
                            <hr />
                            <asp:ListView ID="lvAtributos" runat="server" DataSourceID="SqlDataSourceAtributos" DataKeyNames="Id_Atributo" OnItemCommand="lvAtributos_ItemCommand">
                                
                               <EditItemTemplate>
                                    <tr style="">

                                        <td>
                                            <asp:TextBox ID="txtEditAtri" runat="server" Text='<%# Eval("Atributo") %>' MaxLength="30" CssClass="form-control" ValidationGroup="EditAtri"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Falta a Categoria" ControlToValidate="txtEditAtri" Display="Dynamic" ValidationGroup="EditAtri"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:LinkButton runat="server" ID="a" CssClass="btn btn-success btn-sm" CommandName="Update" CommandArgument='<%# Eval("Id_Atributo") %>' ValidationGroup="EditAtri"><i class="fa fa-check"></i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="b" CssClass="btn btn-danger btn-sm" CommandName="Cancel"><i class="fa fa-ban"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>
                                                <p style="text-align: center">
                                                    <strong>Nenhum Atributo Registado.</strong>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                
                                <ItemTemplate>
                                    <tr style="">
                                        <td>

                                            <asp:Label Text='<%# Eval("Atributo") %>' runat="server" ID="CategoriaLabel" />

                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary btn-sm" CommandName="Edit"><i class="fa fa-edit"></i></asp:LinkButton>
                                        </td>

                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server" style="width:100%">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table runat="server" id="itemPlaceholderContainer" style="" border="0" class="table table-hover">
                                                    <tr runat="server" style="">
                                                        <th runat="server">Atributos</th>
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

                            <asp:SqlDataSource runat="server" ID="SqlDataSourceAtributos" ConnectionString='<%$ ConnectionStrings:Conn %>' SelectCommand="SELECT [Id_Atributo], [Atributo] FROM [Tb_Atributo]" InsertCommand="INSERT INTO Tb_Atributo(Atributo, Id_Usuario, CMD) VALUES (@Atributo, @Id_Usuario, 'Insert')" UpdateCommand="UPDATE Tb_Atributo SET Atributo = @Atributo, Id_Usuario = @Id_Usuario, CMD = 'Update', Data = GETDATE() Where Id_Atributo =@Id_Atributo">
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="txtAtributo" Name="Atributo" PropertyName="Text" />
                                    <asp:Parameter Name="Id_Usuario" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Atributo" />
                                    <asp:Parameter Name="Id_Usuario" />
                                    <asp:Parameter Name="Id_Atributo" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>

                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
