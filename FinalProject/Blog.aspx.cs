using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using HtmlAgilityPack;

namespace FinalProject
{
    public partial class Blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBlogPreviews();
                /*LoadComments();*/
            }
        }

        private string[] ExtractPreview(string filePath)
        {
            HtmlDocument doc = new HtmlDocument();
            doc.Load(filePath);
            var paragraphs = doc.DocumentNode.SelectNodes("//p");
            if (paragraphs == null) return new string[] {"No content available"};
            return paragraphs.Take(2).Select(p => p.InnerText).ToArray();
        }



        private void LoadBlogPreviews()
        {
            var blogFiles = new string[] { "DemoArticle1.aspx", "DemoArticle2.aspx" };
            var basePath = Server.MapPath("~/BlogContent/");

            ContentPlaceHolder cph = (ContentPlaceHolder)Master.FindControl("MainContent");

            foreach (var file in blogFiles)
            {
                string filePath = Path.Combine(basePath, file);
                if (File.Exists(filePath))
                {
                    string[] contentLines = ExtractPreview(filePath);
                    string previewContent = string.Join("<br>", contentLines);


                    LiteralControl link = new LiteralControl($"<h2><a href='/BlogContent/{file}'>{Path.GetFileNameWithoutExtension(file)}</a></h2>");
                    LiteralControl preview = new LiteralControl($"<p>{previewContent}...<a href='/BlogContent/{file}'>Read more</a></p>");

                    if (cph != null)
                    {
                        cph.Controls.Add(link);
                        cph.Controls.Add(preview);
                    }

                }

            }
        }


    }
}