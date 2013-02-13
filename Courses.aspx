<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

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
    <span class="style17">Courses Available
</span>
<br class="style17" />
<br />

</div>

<div id="buttons">

    <asp:Button ID="Button1" runat="server" Text="Degree" onclick="Button1_Click" />
    <asp:Button ID="Button2"
        runat="server" Text="Diploma" onclick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Graduate" 
        onclick="Button3_Click" />
<br />        <br /> 
</div>

<div id="Courses">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" 
        ForeColor="#333333" GridLines="None" Width="75%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:HyperLinkField DataNavigateUrlFields="URLOutline" 
                DataTextField="URLOutline" HeaderText="UrlOutline" Target="_self" />
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

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetDegreeCourses" TypeName="AssignmentManager"></asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        SelectMethod="GetDiplomaCourses" TypeName="AssignmentManager"></asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
        SelectMethod="GetGraduateCourses" TypeName="AssignmentManager"></asp:ObjectDataSource>
</div>


</asp:Content>

