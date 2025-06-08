<%@ Page Title="Menu" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="project.pages.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/menu.css" rel="stylesheet" />
    <link href="../css/master.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-container">
        <div class="title-container">
            <h1 class="page-title">Hollow Knight Boss Tutorial</h1>
            <p class="page-subtitle">Master the art of combat in Hallownest</p>
        </div>

        <form id="boss_list" runat="server" class="boss-form">
            <div class="form-group">
                <label for="boss-select">Choose Your Boss</label>
                <select id="boss-select" name="boss" class="boss-select" required>
                    <option value="">Select a boss...</option>
                    <option value="Broken_vessel">Broken Vessel</option>
                    <option value="Nightmare king grimm">Nightmare King Grimm</option>
                    <option value="False knight">False Knight</option>
                    <option value="Grimm">Grimm</option>
                    <option value="Brooding mawlek">Brooding Mawlek</option>
                    <option value="Sisters of battle">Sisters of Battle</option>
                </select>
                <label id="diverror" runat="server"></label>
            </div>
            <div class="button-group">
                <button type="reset" class="btn btn-reset">
                    <i class="icon-reset"></i> Clear
                </button>
                <button type="submit" class="btn btn-submit">
                    <i class="icon-submit"></i> Begin Tutorial
                </button>
            </div>
        </form>
    </div>
</asp:Content>