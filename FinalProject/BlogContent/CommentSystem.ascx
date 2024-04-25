<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommentSystem.ascx.cs" Inherits="FinalProject.BlogContent.CommentSystem" %>

<link rel="Stylesheet" type="text/css" href="../Style.css" />



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
