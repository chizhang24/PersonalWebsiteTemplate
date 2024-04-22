using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace FinalProject
{
    public class BlogContext : DbContext
    {
        public BlogContext() : base("name=BlogContext")
        {
        }
        public DbSet<User> Users { get; set; }
        public DbSet<Comment> Comments { get; set; }
    }

    public class User
    {
        public int UserId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
    }

    public class Comment
    {
        public int CommentId { get; set; }
        public string Content { get; set; }
        public int UserId { get; set; }
        public virtual User User { get; set; }
    }
}