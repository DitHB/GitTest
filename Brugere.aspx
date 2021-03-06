﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Brugere.aspx.cs" Inherits="Brugere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%--Current site--%>

      <h1>Brugere</h1>



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
                            <td class="col-lg-2 col-md-3 col-sm-3 col-xs-2">    
                                <a class="btn btn-success btn-xs" href="Bruger.aspx?ID=<%# Eval("Id") %>">Vis Detaljer</a>
                                <a class="btn btn-warning btn-xs" href="Rediger.aspx?ID=<%# Eval("Id") %>">Ret</a>
                                <a class="btn btn-danger btn-xs" href="Slet.aspx?ID=<%# Eval("Id") %>">Slet</a>
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

