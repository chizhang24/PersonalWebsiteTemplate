# FinalProject

This is a professional personal website template. The users can substitute their own content and images in this template. 

## Master Page
The whole website is an ASP.NET webform with masterpage, and the path to the master page is '/Site.Master'. The users can change the master page to their own master page.

## Style Sheet
The masterpage is linked to the CSS file '/Style.css'. The users can change the CSS file to their own CSS file.

## Login/Registration System

What makes this website competitive is the login/registration system and comment system. 

For the login/registration system, we defined two boolean functions 'IsPasswordStrong()' and 'IsUsernameValid()' in the code-behind file '/login.aspx.cs', to make sure the password is strong enough and the unique username. The users can change the functions to their own functions. 
We also added a login status box in the master page. When a user is logged in, the login status box will show the username. When a user is not logged in, the login status box will show 'Logged in as: Guest'. The users can change the login status box to their own login status box.

## Comment System

We defined the comment system in the file '/BlogContent/CommentSystem.ascx'. The users can change the comment system to their own comment system. The comment system is based on the LocalDB.


## Database
We used LocalDB to store the usernames and passwords, as well as the comments. We used EF framework to implement this. The LocalDB classes are defined in the file '/App_Code/BlogContext.cs', and the connection string:

<connectionStrings>
		<add name="BlogContext" connectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BlogDatabase;Integrated Security=True" providerName="System.Data.SqlClient" />
	</connectionStrings>

is in '/Web.config'. The users can change the connection string to their own connection string.

## Blog Preview Page
Another thing that makes the website stand out is the blog preview page. We defined the preview logic in the file '/Blog.aspx.cs'. The users can change the logic to their own logic. The actual blog articles are stored in the folder '/BlogContent'. The users can change the folder to their own folder.







All the aspx files of the website are based on the master page. The home page is '/Default.aspx', the CV page is '/CV.aspx', the login/register page is '/login.aspx', the preview page of blog articles is '/Blog.aspx', the actual blog articles are stored in the folder '/BlogContent', and the images are stored in the folder '/Images'.

## TO DO
- Store the passwords in the database in a more secure way, like hashing the passwords.
- Put all the ad hoc inline styles in the 'Style.css' file, and remove unused styles.
- Develop a reply function for the comment system.
- Develop a notification system for the comment system, then when the users comment on a blog article, the author of the article will receive a notification. And when a user replies to a comment, the author of the comment will receive a notification.
- Write a function in the '/Blog.aspx.cs' to automatically retrieve the filename of the blog articles in '/BlogContent', then display the blog articles on the preview page.
