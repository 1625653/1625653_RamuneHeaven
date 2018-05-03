<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ramune_Heaven.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

    <div class="registerbox">

    <div class="registercontent">

    <h1 style="padding-bottom:10px;">Register New Account</h1>
        <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <br />
        <asp:TextBox ID="txtregEmail" runat="server" Height="31px" Width="312px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <br />
        <asp:TextBox ID="TxtRegPassword" runat="server" TextMode="Password" Height="31px" Width="308px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" Height="35px" Width="128px" />
        <br />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </form>

    </div>

    </div>

</asp:Content>
