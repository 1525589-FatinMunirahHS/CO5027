using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace _1525589_CO5027_GardeningTools
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string entryIdString = Request.QueryString["Id"];
            int entryId = int.Parse(entryIdString);
            db_1525589_co5027_asgEntities db = new db_1525589_co5027_asgEntities();
            var entry = db.Products.Single(p => p.ID == entryId);
            litName.Text = entry.Name;
            litPrice.Text =entry.Price.ToString ("$"+".");
            litDescription.Text = entry.Description;

            //build the filename
            string filename = entry.ID.ToString() + entry.Name;
            //set the image control's attributes
           
            imageControl.ImageUrl = ("UploadedImages/" + filename).Trim();
        }
    }
}