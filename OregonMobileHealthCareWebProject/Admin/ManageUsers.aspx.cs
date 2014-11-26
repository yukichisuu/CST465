using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace OregonMobileHealthCareWebProject.Admin
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            foreach (MembershipUser user in Membership.GetAllUsers())
            {
                uxUsers.Items.Add(new ListItem(user.UserName));
            }

            foreach (string role in Roles.GetAllRoles())
            {
                uxRoles.Items.Add(new ListItem(role));
                uxCurrentRoles.Items.Add(new ListItem(role));
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void uxCreateRole_Click(object sender, EventArgs e)
        {
            if (!Roles.RoleExists(uxRoleName.Text))
            {
                Roles.CreateRole(uxRoleName.Text);
                Response.Redirect("~/Admin/ManageUsers.aspx");
            }
            else
            {
                //Role already exists.
            }
        }

        protected void uxRemoveRole_Click(object sender, EventArgs e)
        {
            if (Roles.RoleExists(uxCurrentRoles.SelectedValue))
            {
                Roles.DeleteRole(uxCurrentRoles.SelectedValue);
                Response.Redirect("~/Admin/ManageUsers.aspx");
            }
            else
            {
                //Role does not exist.
            }
        }

        protected void uxAddtoGroup_Click(object sender, EventArgs e)
        {
            Roles.AddUserToRole(uxUsers.SelectedValue, uxRoles.SelectedValue);
        }

        protected void uxRemoveFromGroup_Click(object sender, EventArgs e)
        {
            Roles.RemoveUserFromRole(uxUsers.SelectedValue, uxRoles.SelectedValue);
        }
    }
}