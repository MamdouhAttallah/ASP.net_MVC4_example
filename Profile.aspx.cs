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
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetAllFieldsEnable(false);
                GetUserInfo();
            }
        }

        private bool GetUserInfo()
        {
            if (Master.CurrentUser == null)
                return false;
            
            try
            {
                SqlConnection sqlConnection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["PoliceDeptConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;

                cmd.CommandText = "GetAuthorized";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = sqlConnection1;

                cmd.Parameters.Add("@Person_ID", SqlDbType.VarChar).Value = Master.CurrentUser.Id;

                sqlConnection1.Open();

                SqlDataAdapter mySqlDataAdapter = new SqlDataAdapter();
                mySqlDataAdapter.SelectCommand = cmd;
                DataSet myDataSet = new DataSet();
                mySqlDataAdapter.Fill(myDataSet);

                sqlConnection1.Close();

                if (myDataSet.Tables.Count > 0 && myDataSet.Tables[0] != null)
                {
                    DataTable dt = myDataSet.Tables[0];
                    if (dt.Rows != null && dt.Rows[0] != null)
                    {
                        txtBoxSocialNumber.Text = dt.Rows[0]["SocialNum"].ToString();
                        txtBoxFirstName.Text = dt.Rows[0]["FirstName"].ToString();
                        txtBoxLastName.Text = dt.Rows[0]["LastName"].ToString();
                        txtBoxMiddleName.Text = dt.Rows[0]["MiddleNames"].ToString();
                        radioListGender.SelectedValue = dt.Rows[0]["Gender"].ToString();
                        txtBoxDOB.Text = dt.Rows[0]["DOB"].ToString();
                        txtBoxPOB.Text = dt.Rows[0]["POB"].ToString();
                        txtBoxHeight.Text = dt.Rows[0]["Height"].ToString();
                        txtBoxWeight.Text = dt.Rows[0]["Weight"].ToString();
                    }
                }
                return true;
            }
            catch (Exception ex)
            {
                //TODO: Log error
                return false;
            }
        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {
            btnUpdateProfile.Visible = false;
            btnEditProfile.Visible = true;
            SetAllFieldsEnable(false);
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            btnUpdateProfile.Visible = true;
            btnEditProfile.Visible = false;
            SetAllFieldsEnable(true);
        }

        protected void SetAllFieldsEnable(bool enable)
        {
            txtBoxSocialNumber.Enabled = false;
            txtBoxFirstName.Enabled = false;
            txtBoxLastName.Enabled = false;
            txtBoxMiddleName.Enabled = false;
            radioListGender.Enabled = enable;
            txtBoxDOB.Enabled = enable;
            txtBoxPOB.Enabled = enable;
            txtBoxHeight.Enabled = enable;
            txtBoxWeight.Enabled = enable;
        }
    }
}