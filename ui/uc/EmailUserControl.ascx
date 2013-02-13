<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EmailUserControl.ascx.cs" Inherits="ui_uc_EmailUserControl" %>

<p>
    &nbsp;</p>
<p>
    Send a message to the website manager:</p>
<p>
    Your email address:
    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="388px" 
        AutoPostBack="True"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox3" ErrorMessage="Required" style="color: #FF0000"></asp:RequiredFieldValidator>
</p>
<p>
    Your message:</p>
<p>
    &nbsp;<asp:TextBox ID="TextBox4" runat="server" 
        Height="107px" Width="491px" TextMode="MultiLine" 
        ontextchanged="TextBox4_TextChanged" AutoPostBack="True"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox4" ErrorMessage="Required" style="color: #FF0000"></asp:RequiredFieldValidator>
</p>
<p>
    Do you want a copy of this email sent to you?<asp:RadioButtonList 
        ID="RadioButtonList1" runat="server" AutoPostBack="True" 
        RepeatDirection="Horizontal">
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
</p>
<p>
    &nbsp;<asp:Button ID="Button1" runat="server" Text="Send Email" 
        onclick="Button1_Click" onclientclick="Email Sent!" />
</p>

