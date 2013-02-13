<%@ Page Title="" Language="C#" MasterPageFile="~/ui/mp/Master.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<%@ Register src="ui/uc/EmailUserControl.ascx" tagname="EmailUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-family: "Broadway BT";
            font-size: x-large;
            text-align: left;
        }
    .style6
    {
        font-size: large;
    }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 653px;
        }
        .style10
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="header" class="style5">

    Contact Us<br /> 
    <br />

</div>

<div id="address" align="left">


    <table cellpadding="5" cellspacing="10" class="style8">
        <tr>
            <td class="style9">
                <iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" 
        marginwidth="0" 
        src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=70+The+Pond+Road,+Toronto,+ON,+Canada&amp;aq=0&amp;oq=70+pond+road,+toronto&amp;sll=37.0625,-95.677068&amp;sspn=39.371738,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=70+The+Pond+Rd,+Toronto,+Toronto+Division,+Ontario+M3J+3M6,+Canada&amp;t=m&amp;view=map&amp;z=14&amp;ll=43.770871,-79.499252&amp;output=embed" 
        style="margin-left: 0px"></iframe><br /><small><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=70+The+Pond+Road,+Toronto,+ON,+Canada&amp;aq=0&amp;oq=70+pond+road,+toronto&amp;sll=37.0625,-95.677068&amp;sspn=39.371738,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=70+The+Pond+Rd,+Toronto,+Toronto+Division,+Ontario+M3J+3M6,+Canada&amp;t=m&amp;view=map&amp;z=14&amp;ll=43.770871,-79.499252" style="color:#0000FF;text-align:left">View Larger Map</a></small>
</td>
            <td>
                <strong><span class="style10">Mailing Address:</span></strong><br />
                <span class="style6">Seneca College</span><br class="style6" />
                <span class="style6">Computer Studies</span><br class="style6" />
                <span class="style6">70 The Pond ROad</span><br class="style6" />
                <span class="style6">Toronto, Ontario, M3J 3M6</span><br />
    <br />
    <strong><span class="style10">General Inquiries</span><br class="style6" />
    </strong><span class="style6">Phone: (416) 491-5050 ex 3700</span><br class="style6" />
                <span class="style6">Faz: (416) 661-4034</span><br class="style6" />
    <a href="mailto:computerstudies@senecac.on.ca"><span class="style6">computerstudies@senecac.on.ca</span></a><br />
    <br />
    <strong><span class="style10">Admissions</span><br class="style6" />
    </strong><span class="style6">Registration Office</span><br class="style6" />
                <span class="style6">registrar@senecac.on.ca</span></td>
        </tr>
    </table>


</div>

<div id="email" align="left">

<div id="header2" class="style5">

    Email the Website Manager<br />
    </div>

     <uc1:EmailUserControl ID="EmailUserControl2" runat="server" />
    
    
    </div>


  


   


</asp:Content>

