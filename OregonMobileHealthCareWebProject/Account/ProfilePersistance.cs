using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OregonMobileHealthCareWebProject.Account
{
    class ProfilePersistance
    {
        private string errormessage;

        public void SaveProfile(string userid, RegistrationData data)
        {
            SqlCommand insert = new SqlCommand();
            insert.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["HsuDB"].ConnectionString);
            insert.CommandType = CommandType.StoredProcedure;
            insert.CommandText = "UserProfile_InsertUpdate";
            insert.Parameters.AddWithValue("@UserID", userid);
            insert.Parameters.AddWithValue("@UserName", data.UserName);
            insert.Parameters.AddWithValue("@FirstName", data.FirstName);
            insert.Parameters.AddWithValue("@LastName", data.LastName);
            insert.Parameters.AddWithValue("@Gender", data.Gender);
            insert.Parameters.AddWithValue("@Password", data.Password);
            insert.Parameters.AddWithValue("@EmailAddress", data.EmailAddress);
            try
            {
                insert.Connection.Open();
                insert.ExecuteNonQuery();
                insert.Dispose();
            }
            catch (Exception ex)
            {
                errormessage = ex.Message;
            }
            finally
            {
                insert.Connection.Close();
            }
        }

        public void LoadProfile(string userid, RegistrationData data)
        {
            SqlCommand select = new SqlCommand();
            select.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["HsuDB"].ConnectionString);
            select.CommandType = CommandType.Text;
            select.CommandText = "Select * FROM UserProfile WHERE UserID = @UserID;";
            select.Parameters.AddWithValue("@UserID", userid);
            try
            {
                select.Connection.Open();
                SqlDataReader reader = select.ExecuteReader();
                while (reader.Read())
                {
                    data.UserName = (string)reader["UserName"];
                    data.FirstName = (string)reader["FirstName"];
                    data.LastName = (string)reader["LastName"];
                    data.Gender = (string)reader["Gender"];
                    data.Password = (string)reader["Password"];
                    data.EmailAddress = (string)reader["EmailAddress"];
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
