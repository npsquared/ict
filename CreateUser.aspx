<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            font-size: xx-large;
            font-family: "Broadway BT";
            text-align: left;
        }
        .style18
        {
            text-align: left;
        }
        .style19
        {
            text-decoration: underline;
            font-size: large;
        }
        .style20
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="header" class="style17">

Create New Account
</div>

<div id="content" class="style18">
    <span class="style20">If your email address ends with "</span><span 
        class="style19"><strong><em>@learn.senecac.on.ca</em></strong></span><span 
        class="style20">", then you will be given Student privilages. </span>
<br class="style20" /><br />
    <span class="style20">If your email address ends with "</span><span 
        class="style19"><strong><em>@senecacollege.ca</em></strong></span><span 
        class="style20">", then you will given Staff privilages. </span>
<br class="style20" /><br />
    <span class="style20">If your email address ends with any other email format, then you will be given Public/Community privilages.
    </span>
<br class="style20" /><br />


</div>


<div id="createuser" align="left">



    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#FFFBD6" 
        BorderColor="#FFDFAD" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em" 
        oncreateduser="CreateUserWizard1_CreatedUser" Width="305px" 
        ContinueDestinationPageUrl="~/Default.aspx">
        <ContinueButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <CreateUserButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" 
            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" 
            HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            ForeColor="#990000" />
        <SideBarButtonStyle ForeColor="White" />
        <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
    </asp:CreateUserWizard>



</div>

</asp:Content>

