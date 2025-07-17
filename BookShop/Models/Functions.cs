using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BookShop.Models
{
    public class Functions
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string conStr;
        

        public Functions()
        {
          conStr = "Data Source=DESKTOP-6HPLBAQ\\SQLEXPRESS;Initial Catalog=BookShopDB;User ID=sa;Password=komal123";
            con= new SqlConnection(conStr);
            cmd = new SqlCommand();
            cmd.Connection = con;
        }
        public DataTable GetData(string Query)
        {
            dt = new DataTable();

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                using (cmd = new SqlCommand(Query, con))
                {
                    using (sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle the exception, log it, or throw it, depending on your application's needs.
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }

            return dt;
        }

        public int setData(string Query)
        {
            int cnt = 0;
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.CommandText = Query;
            cnt = cmd.ExecuteNonQuery();
            con.Close();
            return cnt;
        }
    }
}