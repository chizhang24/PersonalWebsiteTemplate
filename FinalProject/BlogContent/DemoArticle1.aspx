<%@ Page Title="Demo Article 1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DemoArticle1.aspx.cs" Inherits="FinalProject.BlogContent.DemoArticle1" %>
<%@ Register Src="~/BlogContent/CommentSystem.ascx" TagPrefix="uc" TagName="CommentSystem" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Random Title</h1>
    <p>Lorem ipsum dolor sit amet consectetur adipiscing elit iaculis potenti blandit, odio posuere sapien molestie integer scelerisque nec suscipit elementum.Fringilla praesent molestie phasellus neque platea ac pellentesque, est dis accumsan fames pretium bibendum sem, quis nascetur semper sociosqu himenaeos malesuada. </p>
     <p> Ante volutpat semper praesent neque nulla dictum aliquam diam gravida congue habitasse, fusce elementum pulvinar eleifend fringilla faucibus senectus porttitor porta.</p>

    <p>Imperdiet est fermentum taciti eros penatibus et facilisis, neque tempus primis malesuada posuere euismod mollis nisl, mattis cursus sociosqu litora ante nulla. Habitasse lobortis quam tristique libero feugiat litora sociosqu pellentesque, ad nibh praesent hac leo lacus mattis, ullamcorper urna pharetra volutpat imperdiet nostra per sed, pretium suscipit augue scelerisque nunc phasellus. Et magna aptent primis cursus dignissim luctus cum aliquam eros, dui cubilia rutrum montes vestibulum vulputate neque posuere quam interdum, tempus turpis eget eu facilisis porttitor condimentum lectus.</p>

    <uc:CommentSystem runat="server" ID="commentSystem" />



    
</asp:Content>
