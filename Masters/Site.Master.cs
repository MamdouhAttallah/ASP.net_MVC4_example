using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Framework;

namespace PoliceDepartment.Masters
{
    public partial class Site : System.Web.UI.MasterPage
    {
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

        protected void Page_Load(object sender, EventArgs e)
        {
            SetSecureLinksVisibility();

            if (!UserCanAccessCurrentPage(Request.Url.ToString()))
                Response.Redirect("~/Login.aspx");
        }

        public bool Placeholderlayer1Visibility { get { return placeholderlayer1.Visible;} set{ placeholderlayer1.Visible = value;} }
        public bool Placeholderlayer2Visibility { get { return placeholderlayer2.Visible;} set{ placeholderlayer2.Visible = value;} }
        public bool Rightplaceholder1Visibility { get { return rightplaceholder1.Visible;} set{ rightplaceholder1.Visible = value;} }
        public bool Rightplaceholder2Visibility { get { return rightplaceholder2.Visible;} set{ rightplaceholder2.Visible = value;} }
        public bool Placeholderlayer3Visibility { get { return placeholderlayer3.Visible; } set { placeholderlayer3.Visible = value; } }

        private bool UserCanAccessCurrentPage(string url)
        {
            return CurrentUser != null || url.Contains("/Login.aspx")
                || url.Contains("/Register.aspx") || url.Contains("/Home.aspx");
        }

        private void SetSecureLinksVisibility()
        {
            bool secureLinksVisibility = CurrentUser != null;

            lnkExploreCases.Visible = secureLinksVisibility;
            lnkReport.Visible = secureLinksVisibility;
            LogOut.Visible = secureLinksVisibility;
        }


    }
}