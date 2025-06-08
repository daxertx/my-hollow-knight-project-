<%@ Page Title="False knight" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="False_knight.aspx.cs" Inherits="project.pages.boss_list.False_knight" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/boss_list.css" rel="stylesheet" />
    <link href="../css/master.css" rel="stylesheet" />

    <div style="background-color:steelblue">
        <h>Boss name:False knight</h>
        <br>
        <img class="medium" src="pictures_and_videos/false_knight/False_knight.png" />
        <p>
           False knight got 3 phases each seperated by his stun.<br />
           False knight doesnt give soul at all unless he is stunned or if you hit him with dream nail<br />
        </p>
        <br>
        <h3>Boss location:</h3>
        <img src="pictures_and_videos/False_knight/False_knight_location.png"/>
        <br>
        <h3>Slam</h3>
        <img src="pictures_and_videos/false_knight/Slam.png" />
        <p>
            False Knight rears back, priming his mace for a moment, before swinging it forward, slamming it into the ground.<br />
            The impact of the mace creates a shockwave that travels forward across the whole arena.<br />
            In Phase 2, this attack also causes rocks to fall, and in Phase 3, even more rocks fall per slam.<br />

            I recomend running away from his attack and jump over the shock wave<br />
        </p>
        <br>
        <h3>Leaping</h3>
        <img src="pictures_and_videos/false_knight/Leap.png" />
        <p>
            False Knight jumps a distance in the air to either reposition or prepare for a Slam attack.<br />
            False Knight does not leap twice in a row.<br />
            False Knight stops using this move in Phase 3.<br />
            False Knight leaps into the air and slams his mace down in front of him when he lands.<br />
            False Knight targets the Knight when he leaps so he strikes where the Knight was when he started his leap.<br />
            While False Knight is in the air, he lifts his mace above his head and then swings it in an overhead arc before he lands, bringing his large body and mace down simultaneously.<br />
            In Phase 3, this attack also causes rocks to fall.<br />
        </p>
        <br>
        <h3>Stun</h3>
        <img src="pictures_and_videos/False_knight/Stunned.png" />
        <p>
            After enough damage is dealt to his armour, False Knight is stunned, falling down and revealing the bug that controls the armour from the inside.<br />
            When the bug takes enough damage, it re-enters the armour and initiates this attack.<br />
            If the bug is left stunned for too long without being attacked, False Knight gets back up and continues his regular attacks without going into Rage.<br />
        </p>
        <br>
        <h3>Rage</h3>
        <img src="pictures_and_videos/False_knight/Rage.png" />
        <p>
            Jumping to the centre of the arena, False Knight slams his mace multiple times on his left and right sides.<br />
            Each time the mace strikes the ground, rocks fall from the ceiling. <br />
            False Knight continues to slam the ground with his mace for about three seconds.<br />
            
        </p>
        <br>
        <h2 style="text-align:center;color:gold;font-weight:bold">now you understand False knight</h2>


        <form action="Menu.aspx"><button type="submit">back</button></form>
    </div>
</asp:Content>
