﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MenuUsuario.master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Vlaza.Cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTitulo" runat="server">
    Cadastro de Cliente
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBody" runat="server">
    <div class="row">
                <div class="col-md-7 col-sm-7">
                  <form class="form-horizontal" role="form">
                    <fieldset>
                      <legend>Dados Pessoais</legend>
                      <div class="form-group">
                        <label for="firstname" class="col-lg-4 control-label">First Name <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="firstname">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="lastname" class="col-lg-4 control-label">Last Name <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="lastname">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="email" class="col-lg-4 control-label">Email <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="email">
                        </div>
                      </div>
                    </fieldset>
                    <fieldset>
                      <legend>Your password</legend>
                      <div class="form-group">
                        <label for="password" class="col-lg-4 control-label">Password <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="password">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="confirm-password" class="col-lg-4 control-label">Confirm password <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="confirm-password">
                        </div>
                      </div>
                    </fieldset>
                    <fieldset>
                      <legend>Newsletter</legend>
                      <div class="checkbox form-group">
                        <label>
                          <div class="col-lg-4 col-sm-4">Singup for Newsletter</div>
                          <div class="col-lg-8 col-sm-8">
                            <input type="checkbox">
                          </div>
                        </label>
                      </div>
                    </fieldset>
                    <div class="row">
                      <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">                        
                        <button type="submit" class="btn btn-primary">Create an account</button>
                        <button type="button" class="btn btn-default">Cancel</button>
                      </div>
                    </div>
                  </form>
                </div>
                <div class="col-md-4 col-sm-4 pull-right">
                  <div class="form-info">
                    <h2><em>Important</em> Information</h2>
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed sit nonumy nibh sed euismod ut laoreet dolore magna aliquarm erat sit volutpat. Nostrud exerci tation ullamcorper suscipit lobortis nisl aliquip  commodo quat.</p>

                    <p>Duis autem vel eum iriure at dolor vulputate velit esse vel molestie at dolore.</p>

                    <button type="button" class="btn btn-default">More details</button>
                  </div>
                </div>
              </div>
            
</asp:Content>
