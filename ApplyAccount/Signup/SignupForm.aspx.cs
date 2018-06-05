using System;
using System.Drawing;
using System.Net;
using System.Net.Mail;


namespace ApplyAccount.Signup
{
    public partial class SignupForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                var emailText = txtEmail.Text;
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress(emailText);
                mailMessage.To.Add("sageer.shahzad@gmail.com");
                mailMessage.Subject = txtSubject.Text;
                mailMessage.Body = "<b>Sender Name: </b>" + txtName.Text + "<br>"
                    + "<b>Sender Email: </b>" + txtEmail.Text + "<br>"
                    + "<b>Comments: </b>" + txtComments.Text;
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new NetworkCredential("sageer.shahzad@gmail.com", "Zoha!bButt");
                smtpClient.Send(mailMessage);

                lblMessage.ForeColor = Color.Blue;
                lblMessage.Text = "Thank You for signup";

                Server.Transfer("~/Default.aspx");
            }
            catch (Exception exception)

            {

                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "There is unknown problem please try later";
            }

        }
    }
}