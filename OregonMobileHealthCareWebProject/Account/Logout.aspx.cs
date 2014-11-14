using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OregonMobileHealthCareWebProject.Account
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_Init (object sender, EventArgs e)
        {
            if(User.Identity.IsAuthenticated )
            {
                FormsAuthentication.SignOut();
                Response.Redirect(Request.Url.ToString());
            }
        }
        protected void uxLogout_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
        }
    }
}