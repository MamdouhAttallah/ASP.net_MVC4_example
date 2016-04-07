using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PoliceDepartment
{
    public partial class CreatePerson : System.Web.UI.Page
    {
        private const string PASSWORD_MATCH_ERROR = "Password Does not match";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lbErrorMessage.Visible = false;
            bool resultOfEntry = InsertPerson();
            Response.Redirect(String.Format("~/Home.aspx?message={0}", Server.HtmlEncode(resultOfEntry ? "Successfully Created New User" : "Create New User Failed!")));
        }

        private bool InsertPerson()
        {
            try
            {
                SqlConnection sqlConnection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["PoliceDeptConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;

                cmd.CommandText = "InsertPerson";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = sqlConnection1;

                cmd.Parameters.Add("@SocialNum", SqlDbType.VarChar).Value = txtBoxSocialNumber.Text;
                cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = txtBoxFirstName.Text;
                cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtBoxLastName.Text;
                cmd.Parameters.Add("@MiddleNames", SqlDbType.VarChar).Value = txtBoxMiddleName.Text;
                cmd.Parameters.Add("@Gender", SqlDbType.VarChar).Value = radioListGender.SelectedValue;
                cmd.Parameters.Add("@DOB", SqlDbType.VarChar).Value = txtBoxDOB.Text;
                cmd.Parameters.Add("@POB", SqlDbType.VarChar).Value = txtBoxPOB.Text;
                //cmd.Parameters.Add("@Eye_ID", SqlDbType.VarChar).Value = txtBoxEye.Text;
                cmd.Parameters.Add("@Build", SqlDbType.VarChar).Value = txtBoxBuild.Text;
                cmd.Parameters.Add("@Height", SqlDbType.VarChar).Value = txtBoxHeight.Text;
                cmd.Parameters.Add("@Weight", SqlDbType.VarChar).Value = txtBoxWeight.Text;
                // cmd.Parameters.Add("@Hair_ID", SqlDbType.VarChar).Value = txtBoxHair.Text;

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