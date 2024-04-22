<%@ Page Title="Login and Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalProject.LoginRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Login or Register</h2>
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
    Username: <asp:TextBox ID="txtUsername" runat="server" /><br />
    Password: <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" /><br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
</asp:Content>
