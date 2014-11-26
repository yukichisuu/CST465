using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace OregonMobileHealthCareWebProject.App_Code
{
    public partial class ViewRegistrationData : System.Web.UI.Page
    {
        String errormessage;

        protected void Page_Load(object sender, EventArgs e)
        {
            //uxUserName.Text += Session["UserName"];
            //uxFirstName.Text += Session["FirstName"];
            //uxLastName.Text += Session["LastName"];
            //uxGender.Text += Session["Gender"];
            //uxPassword.Text += Session["Password"];
            //uxEmail.Text += Session["EmailAddress"];

            SqlCommand select = new SqlCommand();
            select.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["HsuDB"].ConnectionString);
            select.CommandType = CommandType.Text;
            select.CommandText = "Select * FROM UserProfile WHERE UserID = @UserID;";
            select.Parameters.AddWithValue("@UserID", Membership.GetUser().ProviderUserKey.ToString());
            try
            {
                select.Connection.Open();
                SqlDataReader reader = select.ExecuteReader();
                while (reader.Read())
                {
                    uxUserName.Text = (string)reader["UserName"];
                    uxFirstName.Text = (string)reader["FirstName"];
                    uxLastName.Text = (string)reader["LastName"];
                    uxGender.Text = (string)reader["Gender"];
                    uxPassword.Text = (string)reader["Password"];
                    uxEmail.Text = (string)reader["EmailAddress"];
                }
            }
            catch (Exception ex)
            {
                errormessage = ex.Message;
            }
            finally
            {
                select.Connection.Close();
            }
        }
    }
}