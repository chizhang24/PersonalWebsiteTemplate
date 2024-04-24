using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    ltUserName.Text = Session["Username"].ToString();
                }
                else
                {
                    ltUserName.Text = "Guest";
                }

            }



        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Logging out user...");
            FormsAuthentication.SignOut();
            Session.Abandon();

            // Expire the authentication cookie
            HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, "");
            cookie.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookie);

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            Response.Redirect("~/Login.aspx", true);
        }

        

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();

            // Clear authentication cookie
            HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, "");
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);

            Response.Redirect("~/login.aspx");
        }
    }
}