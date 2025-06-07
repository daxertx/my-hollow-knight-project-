<%@ Page Title="Menu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="project.pages.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <center><h style="color:white">Welcome to my hollow knight boss tutrial</h></center>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/Main_pages.css" rel="stylesheet" />
    <div runat="server" id="div1" style="color:red;font-weight:bold"></div>
    <form id="boss_list" runat="server">
        <label>Choose boss</label>
        <select name="boss" required>
            
            <option value="">...</option>
            <option value="Broken_vessel">Broken vessel</option>
            <option value="Nightmare king grimm">Nightmare king grimm</option>
            <option value="False knight">False knight</option>
            <option value="Grimm">Grimm</option>
            <option value="Brooding mawlek">Brooding mawlek</option>
            <option value="Sisters of battle">Sisters of battle</option>

        </select><br /><br />
        <button type="reset">Delete</button><br /><br />
        <button type="submit">Submit</button><br /><br />
    </form>

</asp:Content>
