using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.Views.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            ShowCategories();
        }
        private void ShowCategories()
        {
            string Query = "select * from CategoryTbl";
            CategoriesList.DataSource = con.GetData(Query);
            CategoriesList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || DescriptionTb.Value=="")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CDesc = DescriptionTb.Value; // Retrieve the selected text
                    
                    string Query = "INSERT INTO CategoryTbl VALUES('{0}','{1}')";
                    Query = string.Format(Query, CName,CDesc);

                    con.setData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Inserted";
                    CatNameTb.Value = "";
                    DescriptionTb.Value = "";
                    
                }
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }

        }

        int key = 0;
        protected void AuthorsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatNameTb.Value = CategoriesList.SelectedRow.Cells[2].Text;
            DescriptionTb.Value = CategoriesList.SelectedRow.Cells[3].Text; // Use SelectedValue to set the selected item by value

            if (CatNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(CategoriesList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || DescriptionTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CDesc = DescriptionTb.Value; // Retrieve the selected text

                    string Query = "Update CategoryTbl set CatName='{0}',CatDescription='{1}'where CatId={2}";
                    Query = string.Format(Query, CName, CDesc, CategoriesList.SelectedRow.Cells[1].Text);

                    con.setData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Updated";
                    CatNameTb.Value = "";
                    DescriptionTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || DescriptionTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CDesc = DescriptionTb.Value; // Retrieve the selected text

                    string Query = "delete from CategoryTbl where CatId={0}";
                    Query = string.Format(Query, CategoriesList.SelectedRow.Cells[1].Text);

                    con.setData(Query);
                    ShowCategories();
                    ErrMsg.Text = "Category Deleted";
                    CatNameTb.Value = "";
                    DescriptionTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }
    }
}