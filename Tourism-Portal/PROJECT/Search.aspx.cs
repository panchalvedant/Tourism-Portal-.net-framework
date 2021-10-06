using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace PROJECT
{
    public partial class Search : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@" Server=127.0.0.1;Port=3306;Database=tourismport;User ID=root;Password=;CharSet=utf8; ");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            MySqlCommand comm = new MySqlCommand();
            string query = "select destination from place";
            comm.CommandText = query;
            comm.Connection = conn;

            MySqlDataReader myReader;
            myReader = comm.ExecuteReader();

            bool x = false;
            while (myReader.Read())
            {

                if (TextBox1.Text.ToString() == myReader["destination"].ToString())
                {

                    x = true;
                }

            }

            myReader.Close();
            if (x)
            {
                Response.Redirect(TextBox1.Text + ".aspx");
            }






        }
    }
}