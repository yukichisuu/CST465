using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OregonMobileHealthCareWebProject.App_Code
{
    public partial class ViewRegistrationData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            uxUserName.Text += Session["UserName"];
            uxFirstName.Text += Session["FirstName"];
            uxLastName.Text += Session["LastName"];
            uxGender.Text += Session["Gender"];
            uxPassword.Text += Session["Password"];
            uxEmail.Text += Session["EmailAddress"];
        }
    }
}