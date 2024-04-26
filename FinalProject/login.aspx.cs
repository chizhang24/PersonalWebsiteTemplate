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
        public bool IsPasswordStrong(string password)
        {
            if (password.Length < 8)
            {
                return false;
            }

            if (!password.Any(char.IsDigit))
            {
                return false;
            }

            if (!password.Any(char.IsUpper))
            {
                return false;
            }

            if (!password.Any(char.IsLower))
            {
                return false;
            }

            if (!password.Any(ch => !char.IsLetterOrDigit(ch)))
            {
                return false;
            }

            return true;
        }

        public bool IsUsernameAvailable(string username)
        {
            using (var db = new BlogContext())
            {
                return !db.Users.Any(u => u.Username == username);
            }
        }





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
                    Session["Username"] = user.Username;
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
                //if (db.Users.Any(u => u.Username == txtUsername.Text.Trim()))
                //{
                //    lblMessage.Text = "Username already exists.";
                //    return;
                //}

                string username = txtUsername.Text.Trim();


                string password = txtPassword.Text;
                if (!IsUsernameAvailable(username))
                {
                    lblMessage.Text = "Username already exists.";
                    return;
                }



                if (!IsPasswordStrong(password))
                {
                    lblMessage.Text = "Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character.";
                    return;
                }

                else
                {
                    var user = new User { Username = txtUsername.Text.Trim(), Password = txtPassword.Text };






                    db.Users.Add(user);
                    db.SaveChanges();
                    lblMessage.Text = "Registration successful. Please login.";
                }
            }
        }
    }
}