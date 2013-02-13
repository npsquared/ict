<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="editablepage.aspx.cs" Inherits="author_editablepage" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%--After adding your user controls, change the Src value to use the ~ (tilde) symbol--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlControl" runat="server" Visible="true">
        <p>
            <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" Width="150px" />
            <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="End editing"
                Width="150px" />
            &nbsp;
            <asp:Button ID="btnPageContent" runat="server" Text="Page content" Width="150px"
                OnClick="btnPageContent_Click" />
            &nbsp;
            <asp:Button ID="btnMediaList" runat="server" Text="View media list" Width="150px"
                OnClick="btnMediaList_Click" />
            &nbsp;
            <asp:Button ID="btnMediaUpload" runat="server" Text="Upload media item" Width="150px"
                OnClick="btnMediaUpload_Click" />
            &nbsp;</p>
    </asp:Panel>
    <asp:Panel ID="pnlView" runat="server">
        <asp:Literal ID="litContent" runat="server"></asp:Literal>
    </asp:Panel>
    <asp:Panel ID="pnlEdit" runat="server" Visible="true">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <p>
                    Page title:
                    <asp:TextBox ID="tbTitle" runat="server" Width="400px"></asp:TextBox>&nbsp;<asp:Label
                        ID="lblStatus" runat="server" ForeColor="Green"></asp:Label></p>
                <CKEditor:CKEditorControl ID="editor" runat="server" Height="400px" Width="90%" ToolbarFull="Source|-|Save|Preview|-|Templates
Cut|Copy|Paste|PasteText|PasteFromWord|-|Print|SpellChecker|Scayt
Undo|Redo|-|Find|Replace|-|SelectAll|RemoveFormat
Form|Checkbox|Radio|TextField|Textarea|Select|Button|ImageButton|HiddenField
/
Bold|Italic|Underline|Strike|-|Subscript|Superscript
NumberedList|BulletedList|-|Outdent|Indent|Blockquote|CreateDiv
JustifyLeft|JustifyCenter|JustifyRight|JustifyBlock
BidiLtr|BidiRtl
Link|Unlink|Anchor
Image|Flash|Table|HorizontalRule|Smiley|SpecialChar|PageBreak|Iframe
/
Styles|Format|Font|FontSize
TextColor|BGColor
Maximize|ShowBlocks|-|About"></CKEditor:CKEditorControl>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <p>
                    Your user control</p>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <p>
                    Your user control</p>
            </asp:View>
        </asp:MultiView>
    </asp:Panel>
</asp:Content>

