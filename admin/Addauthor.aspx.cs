using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class admin_Addauthor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    } // Page_Load

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        // This event fires AFTER the user was successfully created
        // It adds the new user to the "Member" role

        // Add the user to the role...
        Roles.AddUserToRole(CreateUserWizard1.UserName, "Administrator");
        // Redirect the user to the welcome page

        Response.Write("New Author added Successfully!!");

    } // CreateUserWizard1_CreatedUser
}