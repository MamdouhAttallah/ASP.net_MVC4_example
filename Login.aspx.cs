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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.Placeholderlayer1Visibility = true;
            Master.Placeholderlayer2Visibility = false;
            Master.Rightplaceholder1Visibility = true;
            Master.Rightplaceholder2Visibility = false;
            Master.Placeholderlayer3Visibility = false;

            /** lblMessage.Visible = false;
             * 

             if (Request.QueryString["message"] != null)
             {
                 lblMessage.Visible = true;
                 lblMessage.Text = Server.HtmlEncode(Request.QueryString["message"].ToString());
             }**/
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            LoginUser(txtBoxUserName.Text, txtBoxPassWord.Text);
        }

        private void LoginUser(string username, string password)
        {
            try
            {
                SqlConnection sqlConnection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["PoliceDeptConnection"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;

                cmd.CommandText = "ValidateUsernamePass";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = sqlConnection1;

                cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = username;
                cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = password;

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
                        int userId = -1;
                        string userName = null;
                        if (dt.Rows[0]["Person_ID"] != null)
                            int.TryParse(dt.Rows[0]["Person_ID"].ToString(), out userId);
                        if (dt.Rows[0]["Username"] != null)
                            userName = dt.Rows[0]["Username"].ToString();

                        if (userId > 0 && username != null)
                        {
                            Session["User"] = new User { Id = userId, Username = userName };
                            Response.Redirect(String.Format("~/Home.aspx?message={0}", Server.HtmlEncode("Successfully Logged in!")));
                        }

                    }
                }
                Response.Redirect(String.Format("~/Login.aspx?message={0}", Server.HtmlEncode("User Name and Password does not Match!")));
            }
            catch (Exception ex)
            {
                //TODO: Log error
            }

        }
    }
}