using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class LoginRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (var db = new BlogContext())
            {
                var user = db.Users.FirstOrDefault(u => u.Username == txtUsername.Text.Trim() && u.Password == txtPassword.Text);
                if (user != null)
                {
                    Session["UserID"] = user.UserId;
                    Response.Redirect("Blog.aspx");
                }
                else
                {
                    lblMessage.Text = "Invalid username or password.";
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (var db = new BlogContext())
            {
                if (db.Users.Any(u => u.Username == txtUsername.Text.Trim()))
                {
                    lblMessage.Text = "Username already exists.";
                    return;
                }

                var user = new User { Username = txtUsername.Text.Trim(), Password = txtPassword.Text };
                db.Users.Add(user);
                db.SaveChanges();
                lblMessage.Text = "Registration successful. Please login.";
            }
        }
    }
}