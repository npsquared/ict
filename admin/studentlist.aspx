<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="studentlist.aspx.cs" Inherits="studentlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
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

<div id="header" class="style18">

    <span class="style17">Student List for ICT School
</span>
<br />
<br />

</div>
<div id="search" class="style18">
    

    <span class="style17">Search using Lastname</span> :  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
    <asp:Button ID="studentsearch" runat="server" Text="Search" Height="26px" 
        Width="94px" />


    <br />
    <br />

</div>


<div id="studentlist" style="height: 434px">

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetALLStudents" TypeName="AssignmentManager"></asp:ObjectDataSource>


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" 
        ForeColor="#333333" GridLines="None" Height="272px" Width="75%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="studentID" HeaderText="studentID" 
                SortExpression="studentID" />
            <asp:BoundField DataField="firstName" HeaderText="firstName" 
                SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="lastName" 
                SortExpression="lastName" />
            <asp:BoundField DataField="programName" HeaderText="programName" 
                SortExpression="programName" />
            <asp:BoundField DataField="semester" HeaderText="semester" 
                SortExpression="semester" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
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


</div>


</asp:Content>


