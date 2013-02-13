using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateUser : System.Web.UI.Page
{
    String str;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        System.Web.Security.MembershipCreateStatus status;

        
        System.Web.Security.Membership.CreateUser
            (CreateUserWizard1.UserName, CreateUserWizard1.Password, CreateUserWizard1.Email,
            CreateUserWizard1.Question, CreateUserWizard1.Answer, true, out status);

        str = CreateUserWizard1.Email;
       
       
        string[] temp = CreateUserWizard1.Email.Split( new string[] {"@"}, StringSplitOptions.None);

        if (temp[1].Equals("learn.senecac.on.ca"))
        {
            System.Web.Security.Roles.AddUserToRole
            (CreateUserWizard1.UserName, "Student");
        }
        else if (temp[1].Equals("senecacollege.ca"))
        {
            System.Web.Security.Roles.AddUserToRole
            (CreateUserWizard1.UserName, "Staff");
        }
        else
        {
            System.Web.Security.Roles.AddUserToRole
            (CreateUserWizard1.UserName, "Public");
        }


        
    }
}