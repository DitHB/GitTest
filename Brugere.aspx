<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Brugere.aspx.cs" Inherits="Brugere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%--Current site--%>

      <h1>Brugere</h1>
    <%-- Panel med heading --%>
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h1 class="panel-title">CodeBehind</h1>
                </div>
                <div class="panel-body">
                    Hentet fra databasen ved hjælp af SQL kald i CodeBehind og DataBind til en Repeater
                </div>
            </div>
        </div>
    </div>



   <!--************************************DATAUDTRÆK**************************************-->

    <table border="1" class="table table-striped">
        <thead>
            <tr>
                 <th>
                     REDIGER
                 </th>
                <th>#</th>
                <th>Navn</th>
                <th>Email</th>
                <th>Telefon</th>
                <th>Password</th>
               
            </tr>
        </thead>
        <tbody>
    <asp:Repeater ID="Repeater_brugere" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <a href="Bruger.aspx">Vis</a>
                                <a href="Rediger.aspx">Ret</a>
                                <a href="Opret.aspx">Opret</a>
                            </td>
                            <td>
                                <%# Eval("Id") %>               
                                   
                            </td>
                            <td>
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
    <!--Dataudtræk CLOSE-->
</asp:Content>

