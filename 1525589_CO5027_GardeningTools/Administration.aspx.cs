using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1525589_CO5027_GardeningTools
{
    public partial class Administration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddEntry_Click(object sender, EventArgs e)
        {
            Product entry = new Product();
            entry.Name = txtName.Text;
            entry.Price = Convert.ToDecimal(txtPrice.Text);
            entry.Description = TxtDescription.Text;
            db_1525589_co5027_asgEntities db = new db_1525589_co5027_asgEntities();
            db.Products.Add(entry);
            //db.SaveChanges();

            //get the extension of our image file
            string extension = (System.IO.Path.GetExtension(fileuploadControl.FileName).ToLower());
            //check the extension is valid
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                //load the image in memory so we can determine it's dimesions
                System.Drawing.Image img = System.Drawing.Image.FromStream(fileuploadControl.PostedFile.InputStream);
                //save the image data
                db.Products.Add(entry);
                db.SaveChanges();
                //assemble the filename
                string filename = entry.ID.ToString() + extension;


                //save the image file (we could have alternatively saved the posted file
                //but this would save any modifications we many have made to the image)
                img.Save(Server.MapPath("~/UploadedImages /"+ filename));
                //inform the user
                litResult.Text = "<p>Your file was uploaded as " + filename + " in the UploadedImages folder</p>";
            }
            else
            {
                db.SaveChanges();
            }
        }
    }
}