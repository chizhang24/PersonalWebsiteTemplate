<%@ Page Title="Demo Article 1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DemoArticle1.aspx.cs" Inherits="FinalProject.BlogContent.DemoArticle1" %>
<%@ Register Src="~/BlogContent/CommentSystem.ascx" TagPrefix="uc" TagName="CommentSystem" %>
<%-- DemoArticle1.aspx
This file is the first demo article page. It is used to show the content of the article and the comment system.For every article, there is a comment system at the bottom of the article content, which is controlled by <uc:CommentSystem runat="server" ID="commentSystem" />, and the comment system is implemented in CommentSystem.ascx file.

Created by: Chi Zhang
Date Created: 4/17/2024
Last Modified by: Chi Zhang
Date Last Modified: 4/26/2024
Part of: A590 WEB Final Project
    --%>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cv-container", style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode';">
    <h1 style="font-size: 24px; color:#007BFF;">Chapitre Premier</h1>
    <p>Après avoir quitté Châteauroux, elle habita, rue du Roi de Sicile, un petit appartement, dans lequel, si j’en juge par la quantité et la dimension des meubles qui garnissent aujourd’hui ma maison, il y avait encore de quoi se retourner. Elle prit, pour faire l’éducation de son fils, un jeune homme que j’ai connu vieux, et qui a été aussi mon précepteur. Ce personnage, à la fois sérieux et comique, a tenu trop de place dans notre vie de famille et dans mes souvenirs, pour que je n’en fasse pas une mention particulière. </p>
     <p> Il s’appelait François Deschartres, et comme il avait porté le petit collet en qualité de professeur au collége du cardinal Lemoine, il entra chez ma grand’mère avec le costume et le titre d’abbé. Mais, à la révolution, qui vint bientôt chicaner sur toute espèce de titres, l’abbé Deschartres devint prudemment le citoyen Deschartres. Sous l’empire, il fut M. Deschartres, maire du village de Nohant ; sous la restauration, il eût volontiers repris son titre d’abbé, car il n’avait pas varié dans son amour pour les formes du passé. Mais il n’avait jamais été dans les ordres, et d’ailleurs il ne put se délivrer d’un sobriquet que j’avais attaché à son omnicompétence et à son air important : on ne l’appelait plus dès lors que le grand homme.</p>

    <p>Il avait été joli garçon, il l’était encore lorsque ma grand’mère se l’attacha : propret, bien rasé, l’œil vif, et le mollet saillant. Enfin, il avait une très bonne tournure de gouverneur. Mais je suis sûre que jamais personne, dans son meilleur temps, n’avait pu le regarder sans rire, tant le mot cuistre était clairement écrit dans toutes les lignes de son visage et dans tous les mouvemens de sa personne.</p>

     <p>
         Pour être complet, il eût dû être ignare, gourmand et lâche. Mais loin de là, il était fort savant, très sobre et follement courageux. Il avait toutes les grandes qualités de l’ame jointes à un caractère insupportable et à un contentement de lui-même qui allait jusqu’au délire. Il avait les idées les plus absolues, les manières les plus rudes, le langage le plus outrecuidant. Mais quel dévoûment, quel zèle, quelle ame généreuse et sensible ! pauvre grand homme ! comme je t’ai pardonné tes persécutions ! Pardonne-moi de même, dans l’autre vie, tous les mauvais tours que je t’ai joués, toutes les détestables espiègleries par lesquelles je me suis vengée de ton étouffant despotisme : tu m’as appris fort peu de choses, mais il en est une que je te dois et qui m’a bien servi : c’est de réussir, malgré les bouillonnemens de mon indépendance naturelle, à supporter longtemps les caractères les moins supportables et les idées les plus extravagantes.
     </p>


    </div>
    
    <div class="cv-container"><uc:CommentSystem runat="server" ID="commentSystem" />
    </div>
    


    
</asp:Content>
