<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bruger.aspx.cs" Inherits="Bruger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <%--Current site--%>

      <h1>Bruger</h1>
    <%-- Panel med heading --%>
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h1 class="panel-title">SQL Datasource</h1>
                </div>
                <div class="panel-body">
                    Hentet fra databasen ved hjælp af SQLDataSource med selectparametrer til at kunne requeste en querystring til en repeater.
                </div>
            </div>
        </div>
    </div>


     <asp:SqlDataSource ID="SqlDataSourceBrugerByID"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [brugere] WHERE Id = @current_ID">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="current_ID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <table border="1" class="table table-striped">
        <thead>
            <tr>
                <th>#</th>
                <th>Navn</th>
                <th>Email</th>
                <th>Telefon</th>
                <th>Password</th>
               
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceBrugerByID">
                <ItemTemplate>
                <tr>
                 
                        <a href="Brugere.aspx" class="btn btn-primary">Tilbage til Brugere</a>
                 
                        <img src="" width="200" height="200" />
                   
                 
                    <td>
                       <p> <%# Eval("Id") %>  </p>                
                    </td>
                    <td class=".">
                        <p><%# Eval("Navn") %></p>
                    </td>

                    <td>
                        <p><%# Eval("Email") %></p>
                    </td>

                    <td>
                        <p><%# Eval("Telefon") %></p>
                    </td>

                    <td>
                        <p><%# Eval("Password") %></p>
                    </td>
                </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

</asp:Content>

