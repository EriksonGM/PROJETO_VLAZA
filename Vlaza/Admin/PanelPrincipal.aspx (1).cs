using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vlaza.Admin
{
    public partial class PanelPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string Usuarios()
        {
            string U;

            using (SqlConnection SQLconn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ToString()))
            {
                SqlCommand cmd = new SqlCommand("Select COUNT(*) from Tb_Usuario", SQLconn);
                cmd.CommandType = CommandType.Text;
                SQLconn.Open();
                U = cmd.ExecuteScalar().ToString();
                SQLconn.Close();
                SQLconn.Dispose();
            }

            return U;
        }
    }
}