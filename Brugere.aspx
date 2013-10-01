<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Brugere.aspx.cs" Inherits="Brugere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<%--    <nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">Brand</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Link</a></li>
      <li><a href="#">Link</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
          <li><a href="#">One more separated link</a></li>
        </ul>
      </li>
    </ul>
    <form class="navbar-form navbar-left" role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">Link</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>--%>






    <!--************************************MENU**************************************-->
    <nav class="navbar navbar-default" role="navigation">
  <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">Admin</a>
  </div>

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Brugere</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li><a href="#">Separated link</a></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.navbar-collapse -->
</nav>
    <!--MENU CLOSE-->



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
                                    <p><%# Eval("Id") %></p>
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


    <!--************************************LOGIND**************************************-->
    <asp:LinkButton CssClass="btn btn-lg btn-primary btn-block" runat="server" text="LOG UD" OnClick="LinkButton_LogUd_Click"> </asp:LinkButton>
    <!--Logind CLOSE-->

</asp:Content>

