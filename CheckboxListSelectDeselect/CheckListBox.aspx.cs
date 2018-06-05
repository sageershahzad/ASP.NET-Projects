using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckboxListSelectDeselect
{
    public partial class CheckListBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                ListBox1.Items.Clear();
                
            }
        }

       

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    ListBox1.Items.Add(li.Text);
                }
            }

            if (CheckBoxList1.SelectedIndex == -1)
            {
                Label1.ForeColor = Color.Red;
            }

            else
            {
                Label1.ForeColor = Color.Black;
            }

            var myNumber = ListBox1.Items.Count + " item (s) selected";

            Label1.Text = myNumber;
        }
    }
}