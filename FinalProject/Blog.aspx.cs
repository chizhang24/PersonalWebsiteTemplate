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


        private string ExtractTitle(string filePath)
        {
            HtmlDocument doc = new HtmlDocument();
            doc.Load(filePath);
            var titleNode = doc.DocumentNode.SelectSingleNode("//h1");
            return titleNode != null ? titleNode.InnerText : "No title available";
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
                    string title = ExtractTitle(filePath);
                    string[] contentLines = ExtractPreview(filePath);
                    string previewContent = string.Join("<br>", contentLines);


                    LiteralControl link = new LiteralControl($"<h2 style='font-size:24px; margin-bottem:10px;'><a href='/BlogContent/{file}' class='article-link'>{title}</a></h2>");
                    LiteralControl preview = new LiteralControl($"<p class='preview-paragraph'>{previewContent}...<a href='/BlogContent/{file}' class='read-more-link'>Read more</a></p>");

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