<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="admin_page.aspx.cs" Inherits="project.pages.admin_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/boss_list.css" rel="stylesheet" />
    <link href="../css/Bug_report.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h >all the database table:</h>

    <h2 id="tableinfo" runat="server"></h2>
      
</asp:Content>
