using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PoliceDepartment
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Placeholderlayer3Visibility = true;
            Master.Rightplaceholder1Visibility = false;
            Master.Rightplaceholder2Visibility = true;
            Master.Placeholderlayer2Visibility = false;
            Master.Placeholderlayer1Visibility = false;

            lblMessage.Visible = false;

            if (Request.QueryString["message"] != null)
            {
                lblMessage.Visible = true;
                lblMessage.Text = Server.HtmlEncode(Request.QueryString["message"].ToString());
            }
        }
    }
}