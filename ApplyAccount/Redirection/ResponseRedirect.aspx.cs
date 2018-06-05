using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplyAccount.Redirection
{
    public partial class ResponseRedirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            // Check whether the browser remains
            // connected to the server.
            if (Response.IsClientConnected)
            {
                // If still connected, redirect
                // to another page. 
                Response.Redirect("ResponseRedirect2.aspx", true);
            }
            else
            {
                // If the browser is not connected
                // stop all response processing.
                Response.End();
            }
        }
    }
}