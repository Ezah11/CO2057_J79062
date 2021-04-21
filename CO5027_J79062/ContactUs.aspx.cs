using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027_J79062
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        [Obsolete]
        protected void btnContact_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("khadizahyusop2484@gmail.com", "khadizahyusop2484@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtBody.Text;

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("khadizahyusop2484@gmail.com", "Rf2BZ2ggTGkX786");
            smtpClient.Credentials = credentials;
            msg = new MailMessage("khadizahyusop2484@gmail.com", "khadizahyusop2484@gmail.com");

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                litResult.Text = "<p>Send failed:" + ex.Message + ":" + ex.InnerException + "</p>";
            }

        }
    }

}