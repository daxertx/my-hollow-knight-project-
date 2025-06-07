<%@ Page Title="Broken vessel" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Broken_vessel.aspx.cs" Inherits="project.pages.boss_list.Broken_vessel" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="../css/boss_list.css" rel="stylesheet" />
    <div style="background-color:darkorange">
         <h>Boss name:Broken vessel</h>
        <br>
        <img class="medium" src="pictures_and_videos/Broken_vessel/Broken_vessel.png" />
        <br>
        <h3>Boss location</h3>
        <img src="pictures_and_videos/Broken_vessel/Broken_vessel_location.png" />
        <br>
        <h3>Slash</h3>
        <img src="pictures_and_videos/Broken_vessel/Slash_attack.png" />
        <p>
            Broken vessel dashes forward, slashing with its nail.
            He travels about 75% of the arena during the dash.
            Broken vessel slashes with its nail in the middle of the dash.
            Sometimes he levitates at bit and then dashes.
            If he levitate jsut stay on the ground and hit him when he is above u.
            If he is on the ground jump and hit him when he is close to you.
        </p>
        <br>
        <h3>Backstep</h3>
        <p>
            Broken Vessel does a quick backwards dash to reposition for another attack.
            In this attack just go a bit to then right or left and hit him
        </p>
        <br>
        <h3>Leap</h3>
        <img src="pictures_and_videos/Broken_vessel/Jump_down.png" />
        <p>
            Broken Vessel leaps either to land on the Knight's location or to move around the arena.
        </p>
        <br>
        <h3>Slam</h3>
        <img src="pictures_and_videos/Broken_vessel/Jump_down.png" />
        <p>
            Broken vessel leaps into the air and positions at the peak of the jump to slam directly down on the Knight.
            The impact of the slam creates four blobs of Infection that rise up and away in parabolic arcs at set distances from Broken Vessel.
            go a bit to the right/left and when he lands j
        </p>
        <br>
        <h3>Cascade</h3>
        <img src="pictures_and_videos/Broken_vessel/Cascade_attack.png" />
        <p>
            Broken vessel leaps to position itself around the centre of the arena.
            It then shakes its head back and forth and spawns a multitude of blobs of Infection.
            This attack covers most of the arena.
            The blobs emanate downwards from Broken Vessel but rise up from beneath the ground in waves of 3 blobs.
            Every wave has a chance to be: all 3 blobs at once, 2 blobs with 1 quickly following behind, or 1 blob with 2 quickly following.
            The whole attack lasts about four seconds with waves of blobs appearing every 0.4 seconds.

            In this attack just go to the corner and dodge how many as you can untill its over
        </p>
        <br>
        <h3>Balloon</h3>
        <img class="litle" src="pictures_and_videos/Broken_vessel/Balloon.png" />
        <p>
            Broken vessel spawns an Infected Balloon enemy with 1 health instead of its usual 15.
            This attack happens every 4-5 seconds.
            Furthermore, this attack happens independently of Broken Vessel's other actions.
            The Infected Balloon typically spawns somewhere in the air and floats straight towards the Knight to deal contact damage.
            There is a limit of 3 Baloons alive at the same time.

            I recommend attacking it when they are close to you and not to go out of your way to kill them
        </p>
        <br>
        <h2 style="text-align:center;color:black;font-weight:bold">now you understand Broken vessel</h2>
        <form action="Menu.aspx"><button type="submit">back</button></form>
    </div>
</asp:Content>
