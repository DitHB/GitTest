<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bruger.aspx.cs" Inherits="Bruger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <%--Current site--%>

      <h1>Bruger</h1>

     <asp:SqlDataSource ID="SqlDataSourceBrugerByID"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [brugere] WHERE Id = @current_ID">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="current_ID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceBrugerByID">
        <ItemTemplate>
            <div class="row">
                <%-- Billede --%>
                <img src="Images/Upload/Resized_Original/<%# Eval("Avatar") %>" class="col-lg-3 col-md-3 col-sm-4 col-xs-2" />
                <%-- Data --%>
                <div class="col-lg-6 col-md-4 col-sm-4">
                    <div class="list-group">
                        <a href="#" class="list-group-item active">
                            <h4 class="list-group-item-heading"><%# Eval("Navn") %></h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 class="list-group-item-heading">Email</h4>
                            <p class="list-group-item-text"><%# Eval("Email") %></p>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 class="list-group-item-heading">Telefon</h4>
                            <p class="list-group-item-text"><%# Eval("Telefon") %></p>
                        </a>
                    </div>
                    <a href="Brugere.aspx" class="btn btn-default">Tilbage</a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>


</asp:Content>

