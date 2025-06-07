<%@ Page Title="About Hollow Knight" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="project.pages.Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/info.css" rel="stylesheet" />

    <h2>Information about Hollow Knight</h2>

     <section class="banner">
     <div class="banner-background"></div>
     <div class="banner-content">
         <h1 class="banner-title">HOLLOW KNIGHT</h1>
         <h2 class="banner-subtitle">SILKSONG</h2>
     </div>
 </section>

 <div class="container">
     <div class="content-grid">
         <!-- Information Section -->
         <section class="content-section">
             <h2>Information about Hollow Knight</h2>
             <p>
                 <strong>Hollow Knight</strong> is an indie action-adventure game developed by Team Cherry.<br>
                 Released in 2017, it has become a fan favorite in the Metroidvania genre, praised for its hand drawn visuals, atmospheric world, challenging combat, and deep lore.
             </p>
         </section>

         <!-- Story Section -->
         <section class="content-section">
             <h2>The Story</h2>
             <div class="story-container">
                 <div class="fan-art">
                     <img src="../pages/pictures_and_videos/overall_things/fan_art.png" alt="Hollow Knight Fan Art">
                 </div>
                 <div class="story-text">
                     <p>
                         You play as a silent, mysterious knight exploring the ancient, ruined kingdom of <strong>Hallownest</strong>. <br>
                         As you descend deeper into the underground world, you uncover secrets about the kingdom’s tragic fall, forgotten civilizations, and your own origin.
                     </p>
                 </div>
             </div>
         </section>

         <!-- Gameplay Section -->
         <section class="content-section">
             <h2>Gameplay Features</h2>
             <ul>
                 <li class="list">Challenging boss fights with unique move sets</li>
                 <li class="list">Beautiful hand drawn 2D art and animation</li>
                 <li class="list">Expansive interconnected world to explore</li>
                 <li class="list">Upgradeable abilities and spells</li>
                 <li class="list">Atmospheric music and sound design</li>
             </ul>
         </section>

         <!-- Development Section -->
         <section class="content-section">
             <h2>Development and Legacy</h2>
             <div class="development-container">
                 <p>
                     Hollow Knight was developed by just three developers in Adelaide, Australia.<br>
                     It was funded through Kickstarter and exceeded expectations. <br>
                     The game's success led to a highly anticipated sequel, <strong>Hollow Knight: Silksong</strong>, which is going to release in this year.
                 </p>
                 <div class="team-cherry">
                     <img src="pictures_and_videos/overall_things/Team_cherry.png" alt="Team Cherry Logo">
                     <p>Developed by Team Cherry</p>
                 </div>
             </div>
         </section>
     </div>
 </div>

 <footer>
     <div class="container">
         <p>HOLLOW KNIGHT & SILKSONG are trademarks of Team Cherry. This fan page is for educational purposes only.</p>
     </div>
 </footer>
</asp:Content>
