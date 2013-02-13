<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="Deleteuser.aspx.cs" Inherits="admin_Deleteuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="header">
<br />
<br />
<br />
Enter details of User to be Deleted

<br />
<br />
<br />

</div>


<div id="details">

 <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label><asp:TextBox ID="TextBox1"
     runat="server"></asp:TextBox>

<br />
<br />

<asp:Button ID="deleteUser" runat="server" Text="Delete User" 
        onclick="deleteUser_Click" />

</div>
   


</asp:Content>

