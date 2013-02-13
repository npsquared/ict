<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="Overview.aspx.cs" Inherits="Overview" %>

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

    <span class="style17">Programs Overview</span> <br /> <br />

</div>

<div id="overview" style="width: 90%; height: 621px">



    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetOverview" TypeName="AssignmentManager">
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" 
        GridLines="None" Width="75%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProgramName" HeaderText="ProgramName" 
                SortExpression="ProgramName" />
            <asp:BoundField DataField="ProgramCode" HeaderText="ProgramCode" 
                SortExpression="ProgramCode" />
            <asp:BoundField DataField="ProgramDescription" HeaderText="ProgramDescription" 
                SortExpression="ProgramDescription" />
            <asp:BoundField DataField="ProgramCredential" HeaderText="ProgramCredential" 
                SortExpression="ProgramCredential" />
            <asp:BoundField DataField="ProgramDuration" HeaderText="ProgramDuration" 
                SortExpression="ProgramDuration" />
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

