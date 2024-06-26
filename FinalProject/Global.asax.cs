﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace FinalProject
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

 Database.SetInitializer(new DropCreateDatabaseIfModelChanges<BlogContext>());

            using (var context = new BlogContext())
            {
                context.Database.Initialize(force: true);
            }
        }

        //protected void Session_End(object sender, EventArgs e)
        //{
        //    //Session.Clear();
        //}
    }
}