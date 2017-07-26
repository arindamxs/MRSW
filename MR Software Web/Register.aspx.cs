using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MR_Software_Web
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Created_user(object sender, EventArgs e)
        {
            Roles.AddUserToRole((sender as CreateUserWizard).UserName, "MR");
        }
        protected void Active(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");

        }
    }
}