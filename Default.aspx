<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Content/bootstrap/signin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="login">
        <h2 class="form-signin-heading">Please sign in</h2>

        <asp:TextBox ID="TextBox_Email" CssClass="form-control" runat="server" placeholder="Email address" autofocus> </asp:TextBox>
         <asp:TextBox ID="TextBox_Password" CssClass="form-control" runat="server" placeholder="Password"> </asp:TextBox>

        <label class="checkbox">
            <asp:CheckBox runat="server" /> Remember me
        </label>
         <asp:LinkButton CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Sign in" OnClick="LinkButton_Login_Click"> </asp:LinkButton>
    </div>

    <asp:Label ID="Label_Besked" runat="server"> </asp:Label>


</asp:Content>

