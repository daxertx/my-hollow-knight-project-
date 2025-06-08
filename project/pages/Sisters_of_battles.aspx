<%@ Page Title="Sisters of battles" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Sisters_of_battles.aspx.cs" Inherits="project.pages.boss_list.sisters_of_battles" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/boss_list.css" rel="stylesheet" />
    <link href="../css/master.css" rel="stylesheet" />

    <div style="background-color:lawngreen">
        <h>Boss name:Sisters_of_battles</h>
        <br>
        <img src="pictures_and_videos/sisters_of_battles/Mantis_Lords.png" />
        <p>
           Phase 1 of Sisters of Battle is identical to Phase 1 of Mantis Lords.<br>
           In Phase 2, all three Sisters emit a battle cry and drop in to fight.
           The Sisters of Battle use all attacks of the 2nd Phase of the Mantis Lords, but with an additional attack from a 3rd Sister.
        </p>
        <br>
        <h3>Boss location:</h3>
        <p>The Sisters of Battle can first be encountered in the Pantheon of Hallownest, after which they can also be fought in the Hall of Gods.</p>
        <br>
        <h3>Dash and drop</h3>
        <img src="pictures_and_videos/sisters_of_battles/Sisters_of_Battle.png" />
        <p>
            All three Sisters combine their patterns into fluid combinations. The pattern these attacks follow loosely comes from the patterns of the original Mantis Lords fight.<br />
            With all three Sisters attacking: two Sisters still follow the patterns of Mantis Lords Phase 2, and one Sister still follows their original pattern like in Mantis Lords Phase 1.<br />
            The single Sister's attack is staggered to happen just after her two Sisters start their attacks whether it be Drop, Double Drop, Dash or Double Dash.<br />
            Furthermore, the single Sister's attack will always be a Drop attack if her Sister or Sisters performed Dash attacks.<br />
            In the case of Drop attacks, it is possible for all three Sisters to choose to chain this attack in quick continuous succession.<br />
        </p>
        <br>
        <h3>Boomerang</h3>
        <img src="pictures_and_videos/sisters_of_battles/Sisters_of_Battle_shoot.png" />
        <p>
            When all three Sisters are alive, two perform the Boomerang attacks on the wall while the third performs a Drop attack a moment after the spears are thrown. <br />
            Two Sisters simultaneously throw their spears creating a wide arc that reaches the opposite end of the arena before coming back together to meet at the centre just at ground level.<br />
            Two Sisters simultaneously throw their spears creating a short arc that meets in the middle of the arena where they stay locked together while gliding down for a few moments before dispersing apart just above ground level.<br />
            Two Sisters simultaneously throw their spears: one throwing a wide arc and the other throwing a short arc causing them to meet either of the far ends of the arena and not the centre before dispersing.<br />
            One Sister throws her spear in either wide or a short arc and leaves while being followed by the Drop attack.<br />
            The previous Boomerang pattern can be followed up with the other Sister appearing on the opposing wall after the first had finished, and she performs the same pattern.<br />
        </p>
        
        <br>
        <h2 style="text-align:center;color:gold;font-weight:bold">now you understand Sisters of battle</h2>


        <form action="Menu.aspx"><button type="submit">back</button></form>
    </div>
</asp:Content>
