<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ramune_Heaven.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

    <div class="loginbox">

    <div class="logincontent">

    <h1 style="padding-bottom:20px;">Login to your Account</h1>
 
    <form id="form1" runat="server">

        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <br />
        <asp:TextBox ID="txtLoginEmail" runat="server" Height="30px" Width="268px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="TxtLoginPassword" runat="server" TextMode="Password" Height="31px" Width="269px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="36px" Width="104px"  />
        <br />
        <br />
        <asp:Literal ID="litLoginResult" runat="server"></asp:Literal>
    </form>

    </div>

    </div>

</asp:Content>
