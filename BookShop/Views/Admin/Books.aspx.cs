using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.Views.Admin
{
    public partial class Books : System.Web.UI.Page
    {
        Models.Functions con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowBooks();
                GetCategories();
                GetAuthors();
            }
           
        }
        private void ShowBooks()
        {
            string Query = "select * from BookTbl";
            BooksList.DataSource = con.GetData(Query);
            BooksList.DataBind();
        }
        private void GetCategories()
        {
            string Query = "select * from CategoryTbl";
            BCatCb.DataTextField = con.GetData(Query).Columns["CatName"].ToString();
            BCatCb.DataValueField = con.GetData(Query).Columns["CatId"].ToString();
            BCatCb.DataSource = con.GetData(Query);
            BCatCb.DataBind();
        }
        private void GetAuthors()
        {
            string Query = "select * from AuthorTbl";
            BAuthCb.DataTextField = con.GetData(Query).Columns["AutName"].ToString();
            BAuthCb.DataValueField = con.GetData(Query).Columns["AutId"].ToString();
            BAuthCb.DataSource = con.GetData(Query);
            BAuthCb.DataBind();
        }
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (BNameTb.Value == "" || BAuthCb.SelectedIndex == -1|| BCatCb.SelectedIndex == -1 || QtyTb.Value==""|| PriceTb.Value=="")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string BName = BNameTb.Value;
                    string BAuth = BAuthCb.SelectedValue.ToString();    
                    string BCategory = BCatCb.SelectedValue.ToString();
                    int Quantity = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "INSERT INTO BookTbl VALUES('{0}',{1},{2},{3},{4})";
                    Query = string.Format(Query, BName, BAuth, BCategory, Quantity,Price);

                    con.setData(Query);
                    ShowBooks();
                    ErrMsg.Text = "Seller Inserted";
                    BNameTb.Value = "";
                   BAuthCb.SelectedIndex = -1;
                    BCatCb.SelectedIndex = -1;
                    QtyTb.Value = "";
                    PriceTb.Value = "";

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
            BNameTb.Value = BooksList.SelectedRow.Cells[2].Text;
            BAuthCb.SelectedValue = BooksList.SelectedRow.Cells[3].Text;
            BCatCb.SelectedValue = BooksList.SelectedRow.Cells[4].Text;
            QtyTb.Value = BooksList.SelectedRow.Cells[5].Text;
            PriceTb.Value = BooksList.SelectedRow.Cells[6].Text;

            if (BNameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(BooksList.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (BNameTb.Value == "" || BAuthCb.SelectedIndex == -1 || BCatCb.SelectedIndex == -1 || QtyTb.Value == "" || PriceTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string BName = BNameTb.Value;
                    string BAuth = BAuthCb.SelectedValue.ToString();
                    string BCategory = BCatCb.SelectedValue.ToString();
                    int Quantity = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "delete BookTbl where BId={0}";
                    Query = string.Format(Query, BooksList.SelectedRow.Cells[1].Text);

                    con.setData(Query);
                    ShowBooks();
                    ErrMsg.Text = "Book Deleted";
                    BNameTb.Value = "";
                    BAuthCb.SelectedIndex = -1;
                    BCatCb.SelectedIndex = -1;
                    QtyTb.Value = "";
                    PriceTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (BNameTb.Value == "" || BAuthCb.SelectedIndex == -1 || BCatCb.SelectedIndex == -1 || QtyTb.Value == "" || PriceTb.Value == "")
                {
                    ErrMsg.Text = "Missing Data!!";
                }
                else
                {
                    string BName = BNameTb.Value;
                    string BAuth = BAuthCb.SelectedValue.ToString();
                    string BCategory = BCatCb.SelectedValue.ToString();
                    int Quantity = Convert.ToInt32(QtyTb.Value);
                    int Price = Convert.ToInt32(PriceTb.Value);

                    string Query = "Update BookTbl Set BName='{0}',BAuthor={1},BCategory={2},BQty={3},BPrice={4} where BId={5}";
                    Query = string.Format(Query, BName, BAuth, BCategory, Quantity, Price, BooksList.SelectedRow.Cells[1].Text);

                    con.setData(Query);
                    ShowBooks();
                    ErrMsg.Text = "Book Updated";
                    BNameTb.Value = "";
                    BAuthCb.SelectedIndex = -1;
                    BCatCb.SelectedIndex = -1;
                    QtyTb.Value = "";
                    PriceTb.Value = "";

                }
            }
            catch (Exception ex)
            {
                ErrMsg.Text = ex.Message;
            }
        }
    }
}