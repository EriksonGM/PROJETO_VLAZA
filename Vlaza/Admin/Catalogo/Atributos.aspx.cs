using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vlaza.Admin.Catalogo
{
    public partial class Atributos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbGuardar_Click(object sender, EventArgs e)
        {
            //if(Page.IsValid)
            //{
                SqlDataSourceAtributos.InsertParameters["Id_Usuario"].DefaultValue = WebMatrix.WebData.WebSecurity.CurrentUserId.ToString();
                SqlDataSourceAtributos.Insert();
                txtAtributo.Text = "";
                lvAtributos.DataBind();
                
            //}
        }
    }
}