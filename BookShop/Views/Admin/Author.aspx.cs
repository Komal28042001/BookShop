using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.Views.Admin
{
    public partial class Author : System.Web.UI.Page
    {
        Models.Functions con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            ShowAuthors();
        }

        private void ShowAuthors()
        {
            string Query = "select * from AuthorTbl";
            AuthorsList.DataSource = con.GetData(Query);
            AuthorsList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (ANameTb.Value == "" || GenCb.SelectedIndex == -1 || CountryCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string AName = ANameTb.Value;
                    string Gender = GenCb.SelectedItem.Text; // Retrieve the selected text
                    string Country = CountryCb.SelectedItem.Text; // Retrieve the selected text

                    string Query = "INSERT INTO AuthorTbl VALUES('{0}','{1}','{2}')";
                    Query = string.Format(Query, AName, Gender, Country);

                    con.setData(Query);
                    ShowAuthors();
                    ErrMsg.Text = "Author Inserted";
                    ANameTb.Value = "";
                    GenCb.SelectedIndex = -1;
                    CountryCb.SelectedIndex = -1;
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
            ANameTb.Value = AuthorsList.SelectedRow.Cells[2].Text;
            GenCb.SelectedValue = AuthorsList.SelectedRow.Cells[3].Text; // Use SelectedValue to set the selected item by value
            CountryCb.SelectedValue = AuthorsList.SelectedRow.Cells[4].Text; // Use SelectedValue to set the selected item by value

            if (ANameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(AuthorsList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_click(object sender, EventArgs e)
        {
            try
            {
                if (ANameTb.Value == "" || GenCb.SelectedIndex == -1 || CountryCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string AName = ANameTb.Value;
                    string Gender = GenCb.SelectedItem.Text; // Retrieve the selected text
                    string Country = CountryCb.SelectedItem.Text; // Retrieve the selected text

                    string Query = "Update AuthorTbl set AutName='{0}',AutGender='{1}',AutCountry='{2}'where AutId={3}";
                    Query = string.Format(Query, AName, Gender, Country, AuthorsList.SelectedRow.Cells[1].Text);

                    con.setData(Query);
                    ShowAuthors();
                    ErrMsg.Text = "Author Updated";
                    ANameTb.Value = "";
                    GenCb.SelectedIndex = -1;
                    CountryCb.SelectedIndex = -1;
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
                if (ANameTb.Value == "" || GenCb.SelectedIndex == -1 || CountryCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Selecct an Author";
                }
                else
                {
                    string AName = ANameTb.Value;
                    string Gender = GenCb.SelectedItem.Text; // Retrieve the selected text
                    string Country = CountryCb.SelectedItem.Text; // Retrieve the selected text

                    string Query = "delete from AuthorTbl where AutId={0}";
                    Query = string.Format(Query, AuthorsList.SelectedRow.Cells[1].Text);

                    con.setData(Query);
                    ShowAuthors();
                    ErrMsg.Text = "Author Deleted";
                    ANameTb.Value = "";
                    GenCb.SelectedIndex = -1;
                    CountryCb.SelectedIndex = -1;
                }
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        protected void GenCb_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
