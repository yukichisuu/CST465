using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OregonMobileHealthCareWebProject.Account
{
    public partial class DetailedRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PasswordCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (uxPassword.TextMode == TextBoxMode.Password)
            {
                uxPassword.TextMode = TextBoxMode.SingleLine;
            }
            else if (uxPassword.TextMode == TextBoxMode.SingleLine)
            {
                uxPassword.TextMode = TextBoxMode.Password;
            }
            else
            {
                uxPassword.TextMode = uxPassword.TextMode;
            }

            if (uxConfirmPassword.TextMode == TextBoxMode.Password)
            {
                uxConfirmPassword.TextMode = TextBoxMode.SingleLine;
            }
            else if (uxConfirmPassword.TextMode == TextBoxMode.SingleLine)
            {
                uxConfirmPassword.TextMode = TextBoxMode.Password;
            }
            else
            {
                uxConfirmPassword.TextMode = uxConfirmPassword.TextMode;
            }
        }
        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            RegistrationData savedata = new RegistrationData();
            savedata.UserName = uxUserName.Text;
            savedata.FirstName = uxFirstName.Text;
            savedata.LastName = uxLastName.Text;
            savedata.Gender = uxGender.Text;
            savedata.Password = uxPassword.Text;
            savedata.EmailAddress = uxEmail.Text;

            Session["UserName"] = savedata.UserName;
            Session["FirstName"] = savedata.FirstName;
            Session["LastName"] = savedata.LastName;
            Session["Gender"] = savedata.Gender;
            Session["Password"] = savedata.Password;
            Session["EmailAddress"] = savedata.EmailAddress;

            Response.Redirect("ViewRegistrationData.aspx");
        }
    }
}