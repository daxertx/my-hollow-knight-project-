<%@ Page Title="Disconnect" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Dissconect.aspx.cs" Inherits="project.pages.Dissconect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../css/master.css" rel="stylesheet" />
    <link href="../css/Main_pages.css" rel="stylesheet" />

    <h2>dissconnect page</h2>
    <br>
    <form runat="server">
        <button type="submit">Dissconnect</button>
        
    </form>
    <br>
    <br>
    <form action="Menu.aspx">
        <button>Cancel</button>
    </form>
    

</asp:Content>

