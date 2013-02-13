<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="Admins.aspx.cs" Inherits="admin_Admins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            color: #CC0000;
            font-size: x-large;
            font-family: "Broadway BT";
        }
        .style18
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="header">
<br />
<br />
<br />

    <span class="style17">Welcome Admin!

</span>

</div>

<div id="functions" class="style18">
<br />
<br />
<br />

    <span class="style17">Functions:

    <br />
    </span>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/admin/Addadmin.aspx" Target="_self">Add a new Administrator</asp:HyperLink>
    <br />
    <br />
 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin/Addauthor.aspx" 
        Target="_self">Add a new Author</asp:HyperLink>
    
    <br />
    <br />
<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/admin/Deleteuser.aspx" 
        Target="_self">Delete a User</asp:HyperLink>
    
    <br />
    <br />


</div>

    
   
    

</asp:Content>

