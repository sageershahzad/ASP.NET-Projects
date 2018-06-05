using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplyAccount.Redirection
{
    public partial class ResponseRedirect2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RedirectResponse2Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Redirection/ResponseRedirect.aspx");
        }
    }
}