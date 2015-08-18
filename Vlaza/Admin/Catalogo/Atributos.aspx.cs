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

        protected void SqlDataSourceAtributos_Updating(object sender, SqlDataSourceCommandEventArgs e)
        {
            
        }

        protected void lvAtributos_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Update")
            {
                SqlDataSourceAtributos.UpdateParameters["Id_Usuario"].DefaultValue = WebMatrix.WebData.WebSecurity.CurrentUserId.ToString();
                SqlDataSourceAtributos.UpdateParameters["Id_Atributo"].DefaultValue = e.CommandArgument.ToString();
                TextBox txt = (TextBox)e.Item.FindControl("txtEditAtri");
                SqlDataSourceAtributos.UpdateParameters["Atributo"].DefaultValue = txt.Text;
                SqlDataSourceAtributos.Update();
                lvAtributos.DataBind();
                
            }
        }
    }
}