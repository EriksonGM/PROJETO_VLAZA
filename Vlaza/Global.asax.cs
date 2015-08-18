using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using WebMatrix.WebData;

namespace SuperOgame
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            WebSecurity.InitializeDatabaseConnection("Conn", "Tb_Usuario", "Id_Usuario", "Email", true);

            if (!Roles.RoleExists("Admin"))
            {
                Roles.CreateRole("Admin");
            }

            if (!Roles.RoleExists("Cliente"))
            {
                Roles.CreateRole("Cliente");
            }

            if (!WebSecurity.UserExists("admin@vlaza.com"))
            {
                WebSecurity.CreateUserAndAccount("admin@vlaza.com", "qwerty123#", new
                {
                    Nome = "Admin",
                    TelfPrim = "000000000"

                });

                Roles.AddUserToRole("Admin", "Admin");
            }
        }

        protected void Session_Start(object sender, EventArgs e)
        {
           
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            ConfigurationManager.AppSettings["Usuario"] = "Convidado";
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}