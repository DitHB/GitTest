<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--    <link href="Content/bootstrap/signin.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <div class="col-sm-4 col-sm-offset-4 col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4">

        <%-- Div-boks med fejlmeddelelse. Ikke synlig --%>
        <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-danger alert-dismissable" Visible="False">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <strong>Forkert</strong> Brugernavn aller password
        </asp:Panel>


        <div class="form-signin">
            <h2 class="form-signin-heading">Login</h2>
            <asp:TextBox ID="TextBox_Email" runat="server" placeholder="Skriv din Email her" required="Brugernavn mangler!" CssClass="form-control" ValidationGroup="login"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_BrugerNavn" runat="server" ErrorMessage="Brugernavn mangler" ValidationGroup="login" Text="*" ControlToValidate="TextBox_Email"></asp:RequiredFieldValidator>

            <asp:TextBox ID="TextBox_Password" runat="server" TextMode="Password" placeholder="Skriv dit password her" required="Password mangler!" CssClass="form-control" ValidationGroup="login"> </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator_Pass" runat="server" ErrorMessage="Password mangler" ValidationGroup="login" Text="*" ControlToValidate="TextBox_Password"></asp:RequiredFieldValidator>

            <label class="checkbox">
                <asp:CheckBox runat="server" ID="CheckBox_Remember" />
                Remember me
            </label>
            <asp:LinkButton CssClass="btn btn-lg btn-primary btn-block" ID="Button_login" runat="server" Text="Sign in" OnClick="LinkButton_Login_Click" />

            <asp:ValidationSummary ID="ValidationSummary_Login" runat="server" ValidationGroup="login" HeaderText="Fejl i Login:" />
        </div>
    </div>

<%--    <asp:Label ID="Label_Besked" runat="server"> </asp:Label>
--%>


</asp:Content>

