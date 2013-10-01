<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bruger.aspx.cs" Inherits="Bruger" %>

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


</asp:Content>

