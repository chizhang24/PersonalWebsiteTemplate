<%@ Page Title="Login and Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalProject.LoginRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cv-container" >
    <h1>Login or Register</h1>
    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />

    <table>
        <tr>
            <td>Username: </td>
            <td colspan="2"> <asp:TextBox ID="txtUsername" runat="server" CssClass="login-box" /></td>
        </tr>

        <tr>
            <td>Password: </td>
            <td colspan="2"> <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="login-box" /></td>
        </tr>

        <tr>
            <td></td>
            <td> <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="login-btn"/></td>
            <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="login-btn"/></td>
        </tr>
    </table>
  
    
   
    
    </div>
</asp:Content>
