<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommentSystem.ascx.cs" Inherits="FinalProject.BlogContent.CommentSystem" %>


<div>
    <h2>Blog Comments</h2>
<asp:GridView ID="gvComments" runat="server" AutoGenerateColumns="False">
    <Columns>
         <asp:BoundField DataField="User.Username" HeaderText="Posted By" />
        <asp:BoundField DataField="Content" HeaderText="Comment" />    
    </Columns>
</asp:GridView>

<asp:TextBox ID="txtComment" TextMode="MultiLine" Columns="50" Rows="4" runat="server"></asp:TextBox><br />
<asp:Button ID="btnPostComment" runat="server" Text="Post Comment" OnClick="btnPostComment_Click"/><br /><br />
</div>
