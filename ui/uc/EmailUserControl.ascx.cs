using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ui_uc_EmailUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        MailMessage mail = new MailMessage();

        //put the values taken from the text boxes in the
        //instance

        mail.To.Add("nprakashpanicker@learn.senecac.on.ca");
        //  mail.From = new MailAddress(TextBox3.Text);
        mail.Subject = "Contact Form Message";
        mail.Body = TextBox4.Text;


        //string emailServer = "learn.senecac.on.ca";
        //checks whether the from text field is not empty
        //and it contains the "@" sign.
        // if (email.From != "" && email.From.Contains("@"))
        // {

        SmtpClient mysmtpclient = new SmtpClient("host");
        if (RadioButtonList1.SelectedIndex == 0)
        {

            mail.CC.Add(TextBox3.Text);
            mysmtpclient.Send(mail);

        }
        else { mysmtpclient.Send(mail); }
        //disables the text fields to prevent user input


        //txtEmailAddress.Enabled = false;
        //txtMessage.Enabled = false;
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}