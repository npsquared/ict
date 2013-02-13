using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_stafflist : System.Web.UI.Page
{
    AssignmentManager a = new AssignmentManager();


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void searchbutton_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "ObjectDataSource3";

        a.search = TextBox1.Text.ToString();
    }

}