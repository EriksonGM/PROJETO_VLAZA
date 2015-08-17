using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vlaza.Admin
{
    public partial class Categorias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbGuardar_Click(object sender, EventArgs e)
        {
            SqlDataSourceCategoria.InsertParameters["Id_Usuario"].DefaultValue = WebMatrix.WebData.WebSecurity.CurrentUserId.ToString();
            SqlDataSourceCategoria.Insert();
            txtCategoria.Text = "";
            lvCategorias.DataBind();

        }

        protected void lvCategorias_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if(e.CommandName=="Update")
            {
                SqlDataSourceCategoria.UpdateParameters["Id_Usuario"].DefaultValue = WebMatrix.WebData.WebSecurity.CurrentUserId.ToString();
                SqlDataSourceCategoria.UpdateParameters["Id_Categoria"].DefaultValue = e.CommandArgument.ToString();
                TextBox txt = (TextBox)e.Item.FindControl("txtEditCat");
                SqlDataSourceCategoria.UpdateParameters["Categoria"].DefaultValue = txt.Text;
                SqlDataSourceCategoria.Update();
                lvCategorias.DataBind();
            }
        }

        protected void lbReload_Click(object sender, EventArgs e)
        {
            lvCategorias.DataBind();
        }

        //protected void lbGuardarSub_Click(object sender, EventArgs e)
        //{
        //    SqlDataSourceSubCat.InsertParameters["Id_Usuario"].DefaultValue = WebMatrix.WebData.WebSecurity.CurrentUserId.ToString();
        //    SqlDataSourceSubCat.Insert();
        //    txtSubCat.Text = "";
        //    lvSubCat.DataBind();
        //}

        //protected void lvSubCat_ItemCommand(object sender, ListViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Update")
        //    {
        //        SqlDataSourceSubCat.UpdateParameters["Id_Usuario"].DefaultValue = WebMatrix.WebData.WebSecurity.CurrentUserId.ToString();
        //        SqlDataSourceSubCat.UpdateParameters["Id_SubCategoria"].DefaultValue = e.CommandArgument.ToString();
        //        DropDownList d = (DropDownList)e.Item.FindControl("ddl");
        //        TextBox t = (TextBox)e.Item.FindControl("SubCategoriaTextBox");
        //        SqlDataSourceSubCat.UpdateParameters["Id_Categoria"].DefaultValue = d.SelectedItem.Value;
        //        SqlDataSourceSubCat.UpdateParameters["SubCategoria"].DefaultValue = t.Text;
        //        SqlDataSourceSubCat.Update();
        //        lvSubCat.DataBind();
        //    }
        //}
    }
}