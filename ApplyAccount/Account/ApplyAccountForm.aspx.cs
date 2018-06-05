using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplyAccount.Account
{
    public partial class ApplyAccountForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                var emailText = EmailTextBox.Text;
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress(emailText);
                mailMessage.To.Add("sageer.shahzad@gmail.com");
                mailMessage.Subject = txtSubject.Text;
                mailMessage.Body = "<b>Contact Name: </b>" + ContactNameTextBox.Text + "<br>"
                                   + "<b>Contact Tel: </b>" + ContactTelTextBox.Text + "<br>"
                                   + "<b>Company Name: </b>" + CompanyNameTextBox.Text + "<br>"
                                   + "<b>Company type: </b>" + CompanyTypeDropDownList.SelectedItem + "<br>"
                                   + "<b>Address: </b>" + AddressTextBox.Text + "<br>"
                                   + "<b>Email: </b>" + EmailTextBox.Text;
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new NetworkCredential("sageer.shahzad@gmail.com", "Zoha!bButt");
                smtpClient.Send(mailMessage);

                //lblMessage.ForeColor = Color.Blue;
                //lblMessage.Text = "Thank You for signup";

                Server.Transfer("~/Default.aspx");
            }
            catch (Exception exception)

            {

                //lblMessage.ForeColor = Color.Red;
                //lblMessage.Text = "There is unknown problem please try later";
            }

        }

        
    }
}