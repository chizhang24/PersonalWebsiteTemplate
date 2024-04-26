<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommentSystem.ascx.cs" Inherits="FinalProject.BlogContent.CommentSystem" %>

<link rel="Stylesheet" type="text/css" href="../Style.css" />
<%-- CommentSystem.aspx
This page is a user control that displays comments for a blog post and allows users to post comments. And it is also controlled by the '/Style.css' file.
Created by: Chi Zhang
Date Created: 4/17/2024
Last Modified by: Chi Zhang
Date Last Modified: 4/26/2024
Part of: A590 WEB Final Project
    --%>




<div>
    <h2>Blog Comments</h2>
<asp:GridView ID="gvComments" runat="server" CssClass="comments-grid" AutoGenerateColumns="False">
    <Columns>
         <asp:BoundField DataField="User.Username" HeaderText="Posted By" HeaderStyle-HorizontalAlign="Left" ItemStyle-CssClass="highlighted-username" />
        <asp:BoundField DataField="Content" HeaderText="Comment" HeaderStyle-HorizontalAlign="Left" />    
    </Columns>
</asp:GridView>

<asp:TextBox ID="txtComment" TextMode="MultiLine" CssClass="comment-txt" runat="server"></asp:TextBox><br />
<asp:Button ID="btnPostComment" runat="server" Text="Post Comment" CssClass="post-comment-btn" OnClick="btnPostComment_Click"/><br /><br />
</div>
