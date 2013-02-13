using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class author_pagecreate : System.Web.UI.Page
{
    AssignmentManager a = new AssignmentManager();

    protected void Page_Load(object sender, EventArgs e)
    {
      /*  if (!IsPostBack)
        {
            AssignmentManager a = new AssignmentManager();
            System.Web.HttpApplication _context;
            _context = System.Web.HttpContext.Current.ApplicationInstance;
            string _root = "";
            _root = _context.Server.MapPath("~/");
            DropDownList1.DataSource = a.getfolders(_root);
            DropDownList1.DataBind();
        }
        */

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        a.CreateNewEditablePage(TextBox1.Text, DropDownList1.SelectedValue);
    }
}