using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class author_editablepage : System.Web.UI.Page
{
    // The PageID of the ictPage object for this web form
    const int pageID = 2;

    // Reference to your Manager class
    AssignmentManager manager = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        // First load tasks
        if (!IsPostBack)
        {
            // Initialize the manager object 
            manager = new AssignmentManager();
            
            // Fetch the page
            ict_Page page = manager.GetPageByID(pageID);

            // Configure the page content editor and the user interface

            if (page != null)
            {
                litContent.Text = page.Content;
                editor.Text = litContent.Text;
                tbTitle.Text = page.Title;
                ViewState["PageTitle"] = page.Title;
            }


            else
            {
                litContent.Text = "";
                editor.Text = litContent.Text;
                tbTitle.Text = "";
                ViewState["PageTitle"] = "";
            }
           
            
        }

        Page.Title = ViewState["PageTitle"] as string;

        // Author tasks
        if (Page.User.IsInRole("Author"))
        {
            // Show the editing control strip
            pnlControl.Visible = true;
            // Configure the visibility of the buttons to match the view/edit mode
            btnEdit.Visible = !pnlEdit.Visible;
            btnView.Visible = btnPageContent.Visible = btnMediaList.Visible = btnMediaUpload.Visible = pnlEdit.Visible;

            // Update the user interface
            lblStatus.Text = "";

            // The following block will capture the intent of the editor's "save" icon
            // Clicking the icon in the CKEditor causes a postback
            // Therefore, we will check here to see if the content and title have changed
            // If yes, we will save the changes, and update the user interface

            string editorText = editor.Text;
            string literalText = litContent.Text;
            string textboxTitle = tbTitle.Text.Trim();
            string viewstateTitle = ViewState["PageTitle"] as string;

            if ((editorText != literalText) | (textboxTitle != viewstateTitle))
            {
                // Save the changes
                manager = new AssignmentManager();
                manager.UpdatePageContentByID(pageID, textboxTitle, editorText);

                // Update the user interface
                Page.Title = textboxTitle;
                ViewState["PageTitle"] = textboxTitle;
                litContent.Text = editorText;
                lblStatus.Text = "Changes have been saved";
            }

        } // Author tasks

    } // Page_Load

     protected void btnEdit_Click(object sender, EventArgs e)
    {
        // Hide the view panel, and the edit button
        pnlView.Visible = btnEdit.Visible = false;

        // Show the edit panel, and configure the buttons
        pnlEdit.Visible = true;
        btnView.Visible = btnPageContent.Visible = btnMediaList.Visible = btnMediaUpload.Visible = pnlEdit.Visible;

        // Show the page content editor
        MultiView1.ActiveViewIndex = 0;

    } // btnEdit_Click

    protected void btnView_Click(object sender, EventArgs e)
    {
        // Show the view panel, and the edit button
        pnlView.Visible = btnEdit.Visible = true;

        // Hide the edit panel, and configure the buttons
        pnlEdit.Visible = false;
        btnView.Visible = btnPageContent.Visible = btnMediaList.Visible = btnMediaUpload.Visible = pnlEdit.Visible;

    } // btnView_Click

    // MultiView control view switching...
    protected void btnPageContent_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnMediaList_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnMediaUpload_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }



}