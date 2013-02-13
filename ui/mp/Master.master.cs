using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Roles.IsUserInRole("Administrator"))
        {
            Response.Cookies["userType"].Expires = DateTime.Now.AddDays(-1D);
          //  FormsAuthentication.SetAuthCookie(HttpContext.Current.User.Identity.Name, false);
          //  Response.Redirect("~/Adminhome.aspx");
           SiteMapDataSource1.SiteMapProvider = "admin";
        }

        else if (Roles.IsUserInRole("Author"))
        {
            Response.Cookies["userType"].Expires = DateTime.Now.AddDays(-1D);
            SiteMapDataSource1.SiteMapProvider = "author";
        }

        else if (Roles.IsUserInRole("Student"))
        {
            Response.Cookies["userType"].Expires = DateTime.Now.AddDays(-1D);
            SiteMapDataSource1.SiteMapProvider = "studentProvider";
        }

        else if (Roles.IsUserInRole("Staff"))
        {
            Response.Cookies["userType"].Expires = DateTime.Now.AddDays(-1D);
            SiteMapDataSource1.SiteMapProvider = "staffProvider";
        }

        else if (Roles.IsUserInRole("Public"))
        {
            Response.Cookies["userType"].Expires = DateTime.Now.AddDays(-1D);
            SiteMapDataSource1.SiteMapProvider = "publicProvider";
        }
        
        
   /*    if (Request.Cookies["userType"] != null)
        {
            string userType = Server.HtmlEncode(Request.Cookies["userType"].Value);

            if (userType == "student")
            {
                SiteMapDataSource1.SiteMapProvider = "studentProvider";
                studentbutton.BorderColor = System.Drawing.Color.Red;
                studentbutton.BackColor = System.Drawing.Color.FromArgb(255, 255, 204);
            }

            else if (userType == "staff")
            {
                SiteMapDataSource1.SiteMapProvider = "staffProvider";
                staffbutton.BorderColor = System.Drawing.Color.Red;
                staffbutton.BackColor = System.Drawing.Color.FromArgb(255, 255, 204);
            }


            else if (userType == "public")
            {
                SiteMapDataSource1.SiteMapProvider = "publicProvider";
                communitybutton.BorderColor = System.Drawing.Color.Red;
                communitybutton.BackColor = System.Drawing.Color.FromArgb(255, 255, 204);
            }


        
           

        } */
    }
    protected void studentbutton_Click(object sender, EventArgs e)
    {
        Response.Cookies["userType"].Value = "student";
        Response.Cookies["userType"].Expires = DateTime.Now.AddDays(100);
        SiteMapDataSource1.SiteMapProvider = "studentProvider";
    //    Response.Redirect("~/studenthome.aspx");
    }


    protected void staffbutton_Click(object sender, EventArgs e)
    {
        Response.Cookies["userType"].Value = "staff";
        Response.Cookies["userType"].Expires = DateTime.Now.AddDays(100);
        SiteMapDataSource1.SiteMapProvider = "staffProvider";
     //   Response.Redirect("~/Staffhome.aspx");
    }
    protected void communitybutton_Click(object sender, EventArgs e)
    {
        Response.Cookies["userType"].Value = "public";
        Response.Cookies["userType"].Expires = DateTime.Now.AddDays(100);
        SiteMapDataSource1.SiteMapProvider = "publicProvider";
      //  Response.Redirect("~/Default.aspx");
    }

   	
   
}
