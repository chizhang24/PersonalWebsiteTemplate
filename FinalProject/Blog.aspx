<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="FinalProject.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Blog Comments</h2>
    <asp:TextBox ID="txtComment" TextMode="MultiLine" Columns="50" Rows="4" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnPostComment" runat="server" Text="Post Comment" OnClick="btnPostComment_Click" /><br /><br />
    <asp:GridView ID="gvComments" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Content" HeaderText="Comment" />
            <asp:BoundField DataField="Username" HeaderText="Posted By" />
        </Columns>
    </asp:GridView>
</asp:Content>
