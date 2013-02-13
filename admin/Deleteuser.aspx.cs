using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class admin_Deleteuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void deleteUser_Click(object sender, EventArgs e)
    {
        Membership.DeleteUser(TextBox1.Text);

        Response.Write("User has been deleted successfully");
    }
}