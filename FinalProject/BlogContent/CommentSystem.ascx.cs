using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace FinalProject.BlogContent
{
    public partial class CommentSystem : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadComments();
            }
        }

        protected void btnPostComment_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                string currentPage = Path.GetFileName(Request.PhysicalPath);
                using (var db = new BlogContext())
                {
                    var comment = new Comment
                    {
                        Content = txtComment.Text.Trim(),
                        UserId = (int)Session["UserID"],
                        PageIdentifier = currentPage
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
                string currentPage = Path.GetFileName(Request.PhysicalPath);
                var comments = db.Comments.Where(c => c.PageIdentifier == currentPage).ToList();
                gvComments.DataSource = comments;
                gvComments.DataBind();
            }
        }
    }
}