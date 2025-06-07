<%@ Page Title="Broken vessel" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Brooding_mawlek.aspx.cs" Inherits="project.pages.boss_list.Brooding_mawlek" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../css/boss_list.css" rel="stylesheet" />
    <div style="background-color:rgba(36,49,100,255)">
        <h>Boss name:Brooding mawlek</h>
        <br>
        <img src="pictures_and_videos/Brooding_mawlek/Brooding_mawlek.png" />
        <br>
        <h3>Boss location</h3>
        <img src="pictures_and_videos/Brooding_mawlek/Brooding_mawlek_location.jpg" />
        <br>
        <h3>Slash</h3>
        <img src="pictures_and_videos/Brooding_mawlek/Brooding_mawlek_spit.png" />
        <p>
            Brooding mawlek uses either of its claws to perform a downward slash towards the you.
            It only uses this attack if the you get too close and can use it in conjunction with the Spit attack.
            Focus on dodging before the attack happends and hitting when you can you can see when Brooding mawlek is charging her attack like in the picture.
        </p>
        <br>
        <h3>Spit</h3>
        <img src="pictures_and_videos/Brooding_mawlek/Brooding_mawlek_spit.png" />
        <p>
            Brooding mawlek spits blobs of Infection in up at regular intervals while skittering slowly across the ground.
            These blobs fly towards whichever side of the arena you are standing on.
            This attack can happen in conjunction with the Slash Attack.
            Brooding mawlek spits 3-4 times before either performing a Leap or a Vomit.
            Focus on dodging and not hitting the brooding mawlek.
        </p>
        <br>
        <h3>Leap</h3>
        <img src="pictures_and_videos/Brooding_mawlek/Brooding_mawlek_leap.png" />
        <p>
            Brooding mawlek leaps to your location, landing where the Knight was at the beginning of its leap.
            Then, it immediately follows that leap with a jump back to the original position of where it landed at the start of the fight.    
            Dodge the first jump and chase the brooding mawlek.
        </p>
        <br>
        <h3>Vomit</h3>
        <img src="pictures_and_videos/Brooding_mawlek/Brooding_mawlek_vomit.png" />
        <p>
            Brooding mawlek shoots a lot of blobs of Infection up arc simultaneously.
            These blobs fly towards whichever side of the arena the you are standing on at the time.
            Brooding mawlek stands idle until all the blobs have made contact with the ground.
            Jump above the brooding mawlek and get to the other side as fast as and hit the boss.
        </p>
        <br>
        
        <h2 style="text-align:center;color:gold;font-weight:bold">now you understand Brooding mawlek</h2>
        <form action="Menu.aspx"><button type="submit">back</button></form>
    </div>
</asp:Content>
