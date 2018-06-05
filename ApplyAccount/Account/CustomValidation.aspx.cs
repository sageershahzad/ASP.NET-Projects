using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplyAccount.Account
{
    public partial class CustomValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {

        }

        protected void PositiveIntegerNumberCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
          if (args.Value == string.Empty)
                {
                    args.IsValid = false;
                }
                else
                {

                    if (Convert.ToInt32(args.Value) % 2 == 0)
                    {
                        args.IsValid = true;
                    }

                    else
                    {
                        args.IsValid = false;
                    }

                }
            }
        }
    }
