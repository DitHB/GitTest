<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rediger.aspx.cs" Inherits="Rediger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    

   <!--************************************DATAUDTRÆK**************************************-->

    <table border="1" class="table table-striped">
        <thead>
            <tr>
                <th>#</th>
            </tr>
            <tr>
                <th>Navn</th>
            </tr>
            <tr>
                <th>Email</th>
            </tr>
            <tr>
                <th>Telefon</th>
            </tr>
            <tr>
                <th>Password</th>
            </tr>
        </thead>
        <tbody>
    <asp:Repeater ID="Repeater_Rediger" runat="server">
                    <ItemTemplate>


                     <%--<a href="Brugere.aspx" class="info-back">Tilbage til Brugere</a>
                    <tr>
                        <td>
                            <asp:Label ID="Label_ID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox_Navn" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox_Email" runat="server" CssClass="txt_fat" TextMode="MultiLine" MaxLength="250"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox_Telefon" runat="server" CssClass="txt_fat" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox_Password" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload ID="FileUpload_Img" runat="server" />
                        </td>
                    </tr>--%>
                  <%--  <tr>
                        <td>
                            <asp:Button ID="Button_Save" runat="server" OnClick="Button_Save_Click" Text="Save" />
                            <asp:Button ID="Button_Delete" runat="server" Text="Delete" OnClick="Button_Delete_Click" />
                        </td>
                    </tr>--%>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    <!--Dataudtræk CLOSE-->






</asp:Content>

