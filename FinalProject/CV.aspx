<%-- CV.aspx
    Description: This page displays the CV of Giacomo Girolamo Casanova, what makes it visually pleasing is the use of fonts of Lucida Sans and the color scheme of blue and grey. 
Created by: Chi Zhang
Date Created: 4/17/2024
Last Modified by: Chi Zhang
Date Last Modified: 4/26/2024
Part of: A590 WEB Final Project
    --%>






<%@ Page Title="Casanova - CV" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CV.aspx.cs" Inherits="FinalProject.CV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cv-container", style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode';">
        <header>
            <h1 style="font-size: 24px; color:#007BFF;">Giacomo Girolamo Casanova</h1>
            <p style="font-size:16px; color:#666;">Email: casanova@iu.edu | <a href="https://en.wikipedia.org/wiki/Giacomo_Casanova">Wikipedia Page</a></p>
        </header>

        <div>
            <h2 style="font-size: 20px; color:#007BFF;">Education</h2>
             <div style="font-size: 16px; color:#666;">Seminary in Padua, 1731-1735 <br /> <div class="cv-description">Focused on religious studies.</div></div>
            <div style="font-size: 16px; color:#666;">University of Padua, Doctor of Law, 1754 <br /> 
               <div class="cv-description"> Focused on civil law, showing early analytical capabilities and keen interest in justice systems.</div>
                
            </div>
        </div>



        <div>
    <h2 style="font-size: 20px; color:#007BFF;">Career Experience</h2>
     <div style="font-size: 16px; color:#666;">Military Officer, Venice, 1742-1743 <br /> <div class="cv-description"> Briefly served in the Venetian army; left after a year due to health issues and a lack of interest in military discipline.</div></div>
    <div style="font-size: 16px; color:#666;">Scribe to Cardinal Acquaviva, Rome, 1743 <br /> 
       <div class="cv-description">Worked as a scribe in Rome, where he utilized his eloquence and knowledge in ecclesiastical affairs before leaving the position to pursue more secular opportunities.</div>       
    </div>

    <div style="font-size: 16px; color:#666;">Deplomatic Envoy, various European cities, 1744-1756<br /> 
   <div class="cv-description">Served as a diplomatic envoy for the Venetian Republic. His role involved negotiating key treaties and navigating the complex political landscapes of Europe.</div>       
    </div>


     <div style="font-size: 16px; color:#666;">Confidential Spy for the Venetian Inquisitors, Venice, 1756-1759<br /> 
<div class="cv-description">Engaged in intelligence gathering and espionage, which demonstrated his adeptness in covert operations and his deep understanding of political and social dynamics.
</div>       
 </div>

         <div style="font-size: 16px; color:#666;">Librarian at Castle Dux, Bohemia, 1785-1798<br /> 
<div class="cv-description">Managed an extensive library collection, which allowed him to indulge his intellectual interests and continue his literary pursuits.
</div>       
 </div>
    

            <div>
    <h2 style="font-size: 20px; color:#007BFF;">Skills</h2>
     <div style="font-size: 16px; color:#666;">Languages</div>
        <ul style="margin:0; font-size:12px; color:#666;">
            <li>Italian: native or bilingual</li>
            <li>French: native or bilingual</li>
            <li>German: fluent</li>
            <li>English: competent</li>
            <li>Spanish: competent</li>
            <li>Latin: competent</li>
        </ul>
    <div style="font-size: 16px; color:#666;">Advanced Negotiation and Deplomacy<br /> 
       <div class="cv-description"> Demonstrated through various diplomatic missions and negotiations throughout Europe.</div>
        
    </div>


    <div style="font-size: 16px; color:#666;">Advanced Analytical Skills<br /> 
   <div class="cv-description"> Applied in legal studies and various intellectual pursuits.</div>
    
    </div>


     <div style="font-size: 16px; color:#666;">Culturl Sensitivity<br /> 
<div class="cv-description"> Developed through extensive travels and interactions with diverse cultures across Europe.</div>
 
 </div>



 <div>
     <h2 style="font-size: 20px; color:#007BFF;">Interests</h2>
      <div style="font-size: 16px; color:#666;">Passionate about philosophy, literature, European culture, and understanding the social dynamics of the Enlightenment era.</div>
     
 </div>









</div>





</div>






















    </div>
</asp:Content>
