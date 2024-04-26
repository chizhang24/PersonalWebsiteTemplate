<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProject.Default1" %>

<%-- Default.aspx
This is the home page of the website, providing a brief biography of Giacomo Casanova and an image of him. The image is stored in '/Images' folder.
Created by: Chi Zhang
Date Created: 4/17/2024
Last Modified by: Chi Zhang
Date Last Modified: 4/26/2024
Part of: A590 WEB Final Project
    --%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1 style="font-size:36px; color:#007BFF;">Giacomo Casanova</h1>

        <div class="bio-content">
            <div class="bio">
                <p class="biography">  Giacomo Casanova, born in 1725 in Venice, was known for more than his romantic escapades. Initially, he studied law at the University of Padua and developed a love for gambling. His life took various turns, from clergyman and military officer to musician, showcasing his versatile personality.</p>

                <p class="biography">Casanova is best remembered for his detailed autobiography, "Histoire de ma Vie" (Story of My Life), where he recounts his travels and numerous affairs across Europe. The book not only cements his reputation as a legendary lover but also offers insights into the cultural and social fabric of Enlightenment Europe.</p>


             <p class="biography">In his later years, Casanova settled as a librarian in Bohemia, dedicating his time to writing and introspection. He died in 1798, leaving a complex legacy that goes beyond the image of a seducer to include that of an intellectual deeply engaged with the ideas of his time.</p>
                
            </div>
            <div class ="portrait">
                <img src="Images/casanova.jpg" alt="Portrait of Giacomo Casanova" class="profile-pic" />
            </div>
        </div>
    </div>
    
</asp:Content>
