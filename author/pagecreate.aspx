<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="pagecreate.aspx.cs" Inherits="author_pagecreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            color: #CC0000;
            font-size: x-large;
            font-family: "Broadway BT";
        }
        #content
        {
            height: 55px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="header">
<br /> <br /> <br />

    <span class="style17">Page create area </span> <br /> <br /> <br />


</div>

<div id="content" style="height: 80%">


Select a folder that will hold the page and enter a page name:

    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>author</asp:ListItem>
    </asp:DropDownList>

    <br /> <br />

    Page name ... <asp:TextBox ID="TextBox1" runat="server" Width="162px"></asp:TextBox>

    <br /> <br />

    <asp:Button ID="Button1" runat="server" Text="Create new page" 
        onclick="Button1_Click" />


</div>
    



</asp:Content>

