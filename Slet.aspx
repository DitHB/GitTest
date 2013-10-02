<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Slet.aspx.cs" Inherits="Slet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Slet bruger</h3>
            </div>
            <div class="panel-body">
                Er du sikker på at du vil slette brugeren?
                <asp:Button ID="ButtonConfirm" runat="server" Text="Ja" CssClass="btn btn-danger" OnClick="ButtonConfirm_Click" />
                <a href="Brugere.aspx" class="btn btn-default">Nej</a>
            </div>
        </div>
    </div>
</asp:Content>

