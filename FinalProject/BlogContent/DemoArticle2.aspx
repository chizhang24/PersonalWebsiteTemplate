<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DemoArticle2.aspx.cs" Inherits="FinalProject.BlogContent.DemoArticle2" %>

<%@ Register Src="~/BlogContent/CommentSystem.ascx" TagPrefix="uc" TagName="CommentSystem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

      <uc:CommentSystem runat="server" ID="commentSystem" />


</asp:Content>
