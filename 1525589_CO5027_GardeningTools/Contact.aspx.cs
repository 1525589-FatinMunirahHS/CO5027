using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1525589_CO5027_GardeningTools
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials =
                 new System.Net.NetworkCredential("ah.teams@gmail.com", "@hteam1234");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("ah.teams@gmail.com", TxtEmail.Text);
            msg.Subject = "Name: " + TxtName.Text + " Subject: " + TxtSubject.Text;
            msg.Body = TxtMsg.Text;
            smtpClient.Send(msg);
          
            try
            {
                smtpClient.Send(msg);
                LitResult.Text =

                    "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                LitResult.Text =
                    "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}