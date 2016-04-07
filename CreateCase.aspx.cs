using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Framework;

namespace PoliceDepartment
{
    public partial class CreateCase : System.Web.UI.Page
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
            if (!IsPostBack)
                rblCrimeType.SelectedIndex = 0;

            if (!UserCanAccessCurrentPage(Request.Url.ToString()))
                Response.Redirect("~/Login.aspx");
        }

        private bool UserCanAccessCurrentPage(string url)
        {
            return CurrentUser != null || url.Contains("/Login.aspx")
                || url.Contains("/Register.aspx") || url.Contains("/Home.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool resultOfCrime = InsertCrime();

            if (resultOfCrime)
                InsertTraffic();
        }

        private bool InsertCrime()
        {
            try
            {
                SqlConnection sqlConnection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["PoliceDeptConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;

                cmd.CommandText = "InsertCrime";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = sqlConnection1;
                cmd.Parameters.Add("@Person_ID", SqlDbType.VarChar).Value = ((User)Session["User"]).Id;
                cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = txtBoxTitle.Text;
                cmd.Parameters.Add("@Location ", SqlDbType.VarChar).Value = txtBoxLocation.Text;
                cmd.Parameters.Add("@DateOf", SqlDbType.VarChar).Value = txtBoxDateOf.Text;
                cmd.Parameters.Add("@TimeOfDay", SqlDbType.VarChar).Value = txtBoxTime.Text;
                cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = txtBoxDescription.Text;
                
                int isTraffic=0, isTheft = 0, isAssault = 0;

                switch (rblCrimeType.SelectedValue)
                {
                    case "1":
                        isTraffic = 1;
                        break;
                    case "2":
                        isTheft = 1;
                        break;
                    case "3":
                        isAssault = 1;
                        break;
                    default:
                        isTraffic = 1;
                        break;
                }

                cmd.Parameters.Add("@isTraffic", SqlDbType.VarChar).Value = isTraffic;
                cmd.Parameters.Add("@isTheft", SqlDbType.VarChar).Value = isTheft;
                cmd.Parameters.Add("@isAssault", SqlDbType.VarChar).Value = isAssault;

                sqlConnection1.Open();

                reader = cmd.ExecuteReader();
                // Data is accessible through the DataReader object here.

                sqlConnection1.Close();
                return true;
            }
            catch (Exception ex)
            {
                //TODO: Log error
                return false;
            }
        }

        private bool InsertTraffic()
        {
            try
            {
                SqlConnection sqlConnection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["PoliceDeptConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;
                cmd.CommandText = "InsertTraffic";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = sqlConnection1;
                cmd.Parameters.Add("@Traffic_Type", SqlDbType.VarChar).Value = txtBoxTrafficViolationType.Text;
                cmd.Parameters.Add("@Fine_Amount ", SqlDbType.VarChar).Value = txtBoxFineAmount.Text;
                cmd.Parameters.Add("@Demerit_Value", SqlDbType.VarChar).Value = txtBoxDemrite.Text;

                sqlConnection1.Open();

                reader = cmd.ExecuteReader();
                // Data is accessible through the DataReader object here.

                sqlConnection1.Close();
                return true;
            }
            catch (Exception ex)
            {
                //TODO: Log error
                return false;
            }
        }
    }
}