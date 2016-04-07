using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Framework;

namespace PoliceDepartment
{
    public partial class ExploreCases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!UserCanAccessCurrentPage(Request.Url.ToString()))
                Response.Redirect("~/Login.aspx");

        }

        public User CurrentUser
        {
            get
            {
                return Session["User"] == null ? null : (User)Session["User"];
            }
            set
            {
                Session["User"] = value;
            }
        }

        private bool UserCanAccessCurrentPage(string url)
        {
            return CurrentUser != null || url.Contains("/Login.aspx")
                || url.Contains("/Register.aspx") || url.Contains("/Home.aspx");
        }
    }
}