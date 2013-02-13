using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.IO;

using System.Collections;
using System.Collections.Generic;


using System.Text;

/// <summary>
/// Summary description for AssignmentManager
/// </summary>
public class AssignmentManager
{
    System.Web.HttpApplication _app;

    public string search = "";

    public AssignmentManager()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<ict_Staff> GetALLStaff()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_Staff.ToList();
        }
    }

    public List<ict_Staff> SearchStaff()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_Staff.Where(s => s.lastName == search).ToList();
        }
    }


    public List<ict_Student> GetALLStudents()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_Student.ToList();
        }
    }

    public List<ict_Degree> GetDegreePrograms()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_Degree.ToList();
        }
    }

    public string GetDegree()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_Degree.Where(d => d.degreeCode == "BSD").ToString();
        }
    }

    public List<ict_ProgramOverview> GetOverview()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_ProgramOverview.ToList();
        }
    }

    public List<ict_DegreeCourse> GetDegreeCourses()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_DegreeCourse.ToList();
        }
    }

    public List<ict_DiplomaCourse> GetDiplomaCourses()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_DiplomaCourse.ToList();
        }
    }

    public List<ict_GraduateCourse> GetGraduateCourses()
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_GraduateCourse.ToList();
        }
    }

    public ict_Page GetPageByID(int id)
    {
        using (var context = new assignmentEntities())
        {
            return context.ict_Page.FirstOrDefault(p => p.PageID == id);
        }
    }


       public bool CreateNewEditablePage(string name, string inFolder)
       {
           // This version does not permit overwrites
           // It could, if the UI had a check box to permit overwrite/replace
           // Then add a parameter to the method to handle and process it

           // This method depends upon the following:
           // editablepage.aspx in the ~/author folder 
           // An entity named ictPage, with the properties referenced below 
           // A "new page creator" web form, which calls this method
           // The web form that calls this method must have the 
           // correctly-configured <location> block in Web.config 

           // Clean up the arguments which were passed in
           name = name.Trim().ToLower();
           
         //  inFolder = inFolder.Trim().ToLower();

           _app = System.Web.HttpContext.Current.ApplicationInstance;

           // Check whether file "name" already exists "inFolder"...

           // Create new proposed folder
          string folder = string.Format("{0}/{1}", _app.Server.MapPath("~/"), inFolder);
         //  string folder = Path.Combine(_app.Server.MapPath("~/"), inFolder);
           // Create new proposed file names
           string newMarkup = Path.Combine(folder, name + ".aspx");
           string newCsharp = Path.Combine(folder, name + ".aspx.cs");

           if (File.Exists(newMarkup))
           {
               return false;
           }
           else
           {
               // Get references to the editablepage.aspx and .cs
               // Use the technique that you used in your Lab 3 code
               // to get access to the http context
               string markup = _app.Server.MapPath("~/author/editablepage.aspx");
               string csharp = _app.Server.MapPath("~/author/editablepage.aspx.cs");

               // Copy the editable page template files
               File.Copy(markup, newMarkup, true);
               File.Copy(csharp, newCsharp, true);
                
               // Open the text of the aspx page
               StreamReader sr = File.OpenText(newMarkup);
               string markupText = sr.ReadToEnd();
               sr.Close();

               // Change the CodeFile attribute in the Page directive to the new file name
               markupText = markupText.Replace("editablepage.aspx", name + ".aspx");
               StreamWriter sw = File.CreateText(newMarkup);
               sw.Write(markupText);
               sw.Close();

               // Create a new ictPage content item
               ict_Page page = null;
               using (var context = new assignmentEntities())
               {
                   page = new ict_Page();
                   page.DateCreated = DateTime.Now;
                   page.DateModified = DateTime.Now;
                   page.Title = "New page - " + name;
                   page.Content = string.Format("<h3>New page - {0}</h3><p>New Page</p>", name);

                   context.ict_Page.AddObject(page);
                   context.SaveChanges();
               }

               // Open the text of the C# code file
               sr = null;
               sr = File.OpenText(newCsharp);
               string csharpText = sr.ReadToEnd();
               sr.Close();

               // Change the placeholder "pageID" value
               csharpText = csharpText.Replace("pageID = 0", "pageID = " + page.PageID.ToString());
               sw = null;
               sw = File.CreateText(newCsharp);
               sw.Write(csharpText);
               sw.Close();

               return true;
           }
       }


       /// <summary>
       /// Get all ictPage objects
       /// </summary>
       /// <returns>Generic list of ictPage objects</returns>
       public List<ict_Page> GetAllPages()
       {
           using (var context = new assignmentEntities())
           {
               return context.ict_Page.OrderByDescending(p => p.DateModified).ToList();
           }
       }

  /*     /// <summary>
       /// Get ictPage objects for a list control
       /// </summary>
       /// <returns>Generic list of custom ictPage objects</returns>
       public List<ListPage> GetListOfAllPages()
       {
           using (var context = new assignmentEntities())
           {
               var pages = from p in context.ict_Page
                           orderby p.Title
                           select new ListPage { PageID = p.PageID, Title = p.Title };
               return pages.ToList();
           }
       }

    */



       public void UpdatePageContentByID(int pageID, string Title, string Content)
       {
           using (var context = new assignmentEntities())
           {
               ict_Page p = context.ict_Page.Single(h => h.PageID == pageID);

               p.Title = Title.Trim();
               p.Content = Content.Trim();
               p.DateCreated = DateTime.Now;
               p.DateModified = DateTime.Now;
             //  p.URL = context.ict_Page.Single(q => q.ID == pageID).URL;


               context.SaveChanges();
           }
       }


    public static string[] getFilesFromBaseDir()
    {
        string baseDir = "~/";
        
        
        List<string> fileResults = new List<string>();
        ArrayList directories = new ArrayList();

        // Add inital Directory to our ArrayList
        directories.Add(baseDir);

        // Loop while there is something in our ArrayList
        while (directories.Count > 0)
        {
            // Get directory from ArrayList
            string currentDir = directories[0].ToString();

            // Remove element from ArrayList
            directories.RemoveAt(0);

            // Add all files in this directory
         //   foreach (string fileName in Directory.GetFiles(currentDir, "*.*"))
         //   {
         //       fileResults.Add(fileName);
         //   }

            // Add all directories in currentDir
            foreach (string dirName in Directory.GetDirectories(currentDir))
            {
                directories.Add(dirName);
            }
        }
        return fileResults.ToArray();
    }

    public string[] getfolders(string folder)
    {
        string[] folders = Directory.GetDirectories(@folder);
        return folders;
    }



}


