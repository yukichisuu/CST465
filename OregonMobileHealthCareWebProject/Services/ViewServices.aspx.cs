using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OregonMobileHealthCareWebProject.Services
{
    public partial class ViewServices : System.Web.UI.Page
    {
        string errormessage;

        protected void Page_Init(object sender, EventArgs e)
        {
            uxServices.DataTextField = "Name";
            uxServices.DataValueField = "ServiceID";

            SqlCommand selectservice = new SqlCommand();
            selectservice.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["HsuDB"].ConnectionString);
            selectservice.CommandType = CommandType.Text;
            selectservice.CommandText = "SELECT ServiceID, Name FROM Services;";
            try
            {
                selectservice.Connection.Open();
                SqlDataReader reader = selectservice.ExecuteReader();
                uxServices.DataSource = reader;
                uxServices.DataBind();
                reader.Close();
            }
            catch (Exception ex)
            {
                errormessage = ex.Message;
            }
            finally
            {
                selectservice.Connection.Close();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uxShowService_Click(object sender, EventArgs e)
        {
            SqlCommand selectservice = new SqlCommand();
            selectservice.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["HsuDB"].ConnectionString);
            selectservice.CommandType = CommandType.Text;
            selectservice.CommandText = "SELECT Name, CAST ( COST AS DECIMAL ( 10, 2 ) ) AS Cost, Description FROM Services WHERE ServiceID = @ServiceID;";
            selectservice.Parameters.AddWithValue("ServiceID", uxServices.SelectedValue);
            try
            {
                selectservice.Connection.Open();
                SqlDataReader reader = selectservice.ExecuteReader();
                uxService.DataSource = reader;
                uxService.DataBind();
                reader.Close();
            }
            catch (Exception ex)
            {
                errormessage = ex.Message;
            }
            finally
            {
                selectservice.Connection.Close();
            }
        }
    }
}