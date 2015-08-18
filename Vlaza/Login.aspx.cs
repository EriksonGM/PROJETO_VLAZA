using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebMatrix.WebData;

namespace Vlaza
{
    
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbEntrar_Click(object sender, EventArgs e)
        {
            if (WebSecurity.Login(txtEmail.Text, txtPass.Text))
            {

                var returnUrl = Request.QueryString["ReturnUrl"];

                if (string.IsNullOrEmpty(returnUrl))
                {
                    Response.Redirect("/Inicio.aspx");
                }
                else
                {
                    Response.Redirect(returnUrl);
                }
            }
            else
            {
                //Response.Redirect(Request.RawUrl);
            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {

            if (WebMatrix.WebData.WebSecurity.UserExists(txtEmail.Text))
            {
                if (WebSecurity.Login(txtEmail.Text, txtPass.Text))
                {
                    if (!string.IsNullOrEmpty(WebSecurity.CurrentUserName))
                    {
                        try
                        {
                            using (SqlConnection SQLconn = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ToString()))
                            {
                                SqlCommand cmd = new SqlCommand("EmailToUser", SQLconn);

                                cmd.CommandType = CommandType.StoredProcedure;

                                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50);
                                cmd.Parameters["@Email"].Value = WebSecurity.CurrentUserName;

                                SQLconn.Open();
                                //string U = cmd.ExecuteScalar().ToString();
                                ConfigurationManager.AppSettings["Usuario"] = cmd.ExecuteScalar().ToString();

                            }
                        }
                        catch (Exception)
                        {

                            throw;
                        }
                    }

                    var returnUrl = Request.QueryString["ReturnUrl"];

                    if (string.IsNullOrEmpty(returnUrl))
                    {
                        Response.Redirect("/Inicio.aspx");

                    }
                    else
                    {
                        Response.Redirect(returnUrl);

                    }
                }
                else
                {
                    lblErro.Visible = true;
                    //Response.Redirect(Request.RawUrl);
                } 
            }
            else
            {
                lblErro.Visible = true;
                //Response.Redirect(Request.RawUrl);
            }
        }
       
    }
}