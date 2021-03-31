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
        private object litResult;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        [Obsolete]
        protected void btnSendSecure_Click(object sender, EventArgs e)
        {
            /*try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("khadizahyusop2484@gmail.com");
                mail.From = new MailAddress("khadizahyusop2484@gmail.com");
                mail.Subject = txtSubject.Text;
                mail.Body = txtBody.Text;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("khadizahyusop2484@gmail.com", "Rf2BZ2ggTGkX786");
                smtp.Credentials = credentials;
                smtp.EnableSsl = true;

                smtp.Send(mail);
                litResult.Text = "Mail Send!";
            }

            catch (Exception ex)
            {
                litResult.Text = "Send Failed!";
            }*/
        }
    }

}