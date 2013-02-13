using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "ObjectDataSource1";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "ObjectDataSource2";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "ObjectDataSource3";
    }
}