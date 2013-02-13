<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="stafflist.aspx.cs" Inherits="student_stafflist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            font-size: x-large;
            font-family: "Broadway BT";
            text-align: left;
        }
        .style18
        {
            text-align: left;
        }
        .style19
        {
            font-size: x-large;
            font-family: "Broadway BT";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="header" class="style17">
Staff Information<br /> <br />
</div>

<div id="search" class="style18">

    <span class="style19">Search staff members using Lastname:
</span>
    <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="209px"></asp:TextBox>
    <asp:Button
        ID="searchbutton" runat="server" Text="Search" Width="91px" 
        onclick="searchbutton_Click" />

<br class="style19" />
<br />

</div>

<div id="stafflist" style="height: 367px">
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        SelectMethod="GetALLStaff" TypeName="AssignmentManager"></asp:ObjectDataSource>



    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
        DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None" 
        Height="242px" Width="75%">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>



    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
        SelectMethod="SearchStaff" TypeName="AssignmentManager">
    </asp:ObjectDataSource>



</div>
    
</asp:Content>

