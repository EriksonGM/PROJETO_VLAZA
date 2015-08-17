using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vlaza
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebMatrix.WebData.WebSecurity.Logout();
            Response.Redirect("/Inicio.aspx");
        }
    }
}