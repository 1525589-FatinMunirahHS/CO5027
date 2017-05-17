using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1525589_CO5027_GardeningTools
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = new db_1525589_co5027_asgEntities();
            var ProductsEntries = db.Products.ToList();
            Repeater1.DataSource = ProductsEntries.OrderBy(p => p.Name);
            Repeater1.DataBind();
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
                Server.Transfer("Login.aspx", true);

        }
    }
}