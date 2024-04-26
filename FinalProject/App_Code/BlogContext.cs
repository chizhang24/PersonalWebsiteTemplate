/* BlogContext.cs 
This file contains the BlogContext class and two other classes, User and Comment. The BlogContext class is a subclass of DbContext, which is a class in Entity Framework that represents a session with the database. The BlogContext class has two properties, Users and Comments, which are DbSet properties that represent the tables in the database. The User class represents a user in the system and has properties for the user's ID, username, and password. The Comment class represents a comment in the system and has properties for the comment's ID, content, user ID, and page identifier. The User property in the Comment class is a navigation property that represents the user who made the comment. The PageIdentifier property in the Comment class is used to identify the page on which the comment was made.

Created by: Chi Zhang
Date Created: 4/17/2024
Last Modified by: Chi Zhang
Date Last Modified: 4/26/2024
Part of: A590 WEB Final Project 
 */



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
        public string PageIdentifier { get; set; }
    }
}