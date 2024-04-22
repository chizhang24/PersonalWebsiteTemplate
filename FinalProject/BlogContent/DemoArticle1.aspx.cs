using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.BlogContent
{
    public partial class DemoArticle1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadComments();
            }
        }

        protected void btnPostComment_Click(object sender, EventArgs e)
        {

            if (Session["UserID"] != null)
            {
                using (var db = new BlogContext())
                {
                    var comment = new Comment
                    {
                        Content = txtComment.Text.Trim(),
                        UserId = (int)Session["UserID"]
                    };
                    db.Comments.Add(comment);
                    db.SaveChanges();
                    LoadComments();
                }
            }
            else
            {
                Response.Redirect("../login.aspx");
            }
        }


        private void LoadComments()
        {
            using (var db = new BlogContext())
            {
                var comments = db.Comments.Include("User").Select(c => new { c.Content, Username = c.User.Username }).ToList();
                gvComments.DataSource = comments;
                gvComments.DataBind();
            }
        }

    }
}