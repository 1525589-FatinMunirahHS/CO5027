using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


namespace _1525589_CO5027_GardeningTools
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            Page.Validate("btnSignUp");

            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            var user = new IdentityUser() { UserName = TxtEmail.Text, Email = TxtEmail.Text };
            IdentityResult result = manager.Create(user, TxtPassword.Text);
            if (result.Succeeded)
            {
                litRegisterError.Text = "Sign up Sucessed "+ result.Errors.FirstOrDefault();
            }
            else
            {

                litRegisterError.Text = "An error has occured:" + result.Errors.FirstOrDefault();

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Page.Validate("btnLogin");
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);

           

            var user = userManager.Find(TxtEmail2.Text, TxtPassword2.Text);
            if (user != null)
            {
                litLoginError.Text = "Success";
                LogUserIn(userManager, user);
                Server.Transfer("Shop.aspx", true);

            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }
        }
        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);


        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            {
                Page.Validate("btnAdmin");
             
                    Server.Transfer("Administration.aspx", true);

            


        }
    }
    }
}