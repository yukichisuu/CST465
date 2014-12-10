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
    public partial class ServiceManager : System.Web.UI.Page
    {
        string errormessage;

        protected void Page_Load(object sender, EventArgs e)
        {
            BindServices();
        }

        protected void uxAddService_Click(object sender, EventArgs e)
        {
            SqlCommand insertservice = new SqlCommand();
            insertservice.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["HsuDB"].ConnectionString);
            insertservice.CommandType = CommandType.Text;
            insertservice.CommandText = "INSERT INTO Services ( Name, Cost, Description ) VALUES ( @Name, @Cost, @Description );";
            insertservice.Parameters.AddWithValue ("@Name", uxName.Text);
            insertservice.Parameters.AddWithValue ("@Cost", uxCost.Text);
            insertservice.Parameters.AddWithValue ("@Description", uxDescription.Text);
            try
            {
                insertservice.Connection.Open();
                insertservice.ExecuteNonQuery();
                insertservice.Dispose();
            }
            catch (Exception ex)
            {
                errormessage = ex.Message;
            }
            finally
            {
                insertservice.Connection.Close();
                BindServices();
            }
        }

        protected void BindServices()
        {
            SqlCommand selectservices = new SqlCommand();
            selectservices.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["HsuDB"].ConnectionString);
            selectservices.CommandType = CommandType.Text;
            selectservices.CommandText = "SELECT Name, CAST ( Cost AS decimal ( 10, 2 ) ) AS Cost FROM Services;";
            try
            {
                selectservices.Connection.Open();
                SqlDataReader reader = selectservices.ExecuteReader();
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
                selectservices.Connection.Close();
            }
        }
    }
}