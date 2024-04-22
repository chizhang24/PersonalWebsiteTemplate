<%@ Page Title="Demo Article 1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DemoArticle1.aspx.cs" Inherits="FinalProject.BlogContent.DemoArticle1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>Lorem ipsum dolor sit amet consectetur adipiscing elit iaculis potenti blandit, odio posuere sapien molestie integer scelerisque nec suscipit elementum.Fringilla praesent molestie phasellus neque platea ac pellentesque, est dis accumsan fames pretium bibendum sem, quis nascetur semper sociosqu himenaeos malesuada. </p>
     <p> Ante volutpat semper praesent neque nulla dictum aliquam diam gravida congue habitasse, fusce elementum pulvinar eleifend fringilla faucibus senectus porttitor porta.</p>

    <p>Imperdiet est fermentum taciti eros penatibus et facilisis, neque tempus primis malesuada posuere euismod mollis nisl, mattis cursus sociosqu litora ante nulla. Habitasse lobortis quam tristique libero feugiat litora sociosqu pellentesque, ad nibh praesent hac leo lacus mattis, ullamcorper urna pharetra volutpat imperdiet nostra per sed, pretium suscipit augue scelerisque nunc phasellus. Et magna aptent primis cursus dignissim luctus cum aliquam eros, dui cubilia rutrum montes vestibulum vulputate neque posuere quam interdum, tempus turpis eget eu facilisis porttitor condimentum lectus.</p>

    <h2>Blog Comments</h2>
    <asp:TextBox ID="txtComment" TextMode="MultiLine" Columns="50" Rows="4" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnPostComment" runat="server" Text="Post Comment" OnClick="btnPostComment_Click"/><br /><br />
    <asp:GridView ID="gvComments" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Content" HeaderText="Comment" />
            <asp:BoundField DataField="Username" HeaderText="Posted By" />
        </Columns>
    </asp:GridView>
</asp:Content>
