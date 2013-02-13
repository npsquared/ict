<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="ui/css/StyleSheet.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .style4
    {
        font-family: "Courier New", Courier, monospace;
        font-size: x-large;
    }
</style>




    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  

    


    <div id="first" class="style4" style="background-color: #C0C0C0">
    
    <strong>Welcome to the Seneca @York ICT Page</strong></div>



<div id="senecaimage" style="background-color: #66CCFF; height: inherit;">



    <asp:Image ID="Image1" runat="server" AlternateText="senecaimage" Height="408%" 
        ImageAlign="Middle" ImageUrl="~/assets/images/Seneca@York2.jpg" 
        style="text-align: left" Width="56%" />



</div>


</asp:Content>

