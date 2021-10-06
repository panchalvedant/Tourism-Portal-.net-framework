using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.Services;

namespace PROJECT
{
    public partial class Taj_Mahal : System.Web.UI.Page
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

                if (sew_searchBox.Text.ToString().ToLower() == myReader["destination"].ToString().ToLower())
                {

                    x = true;
                }

            }

            myReader.Close();
            if (x)
            {
                Response.Redirect(sew_searchBox.Text.ToString().ToLower() + ".aspx");
            }

            else
            {
                string message = "No Record Found !";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }


        }
        [WebMethod]
        public static List<string> GetEmp(string destination)
        {
            MySqlConnection conn = new MySqlConnection(@" Server=127.0.0.1;Port=3306;Database=tourismport;User ID=root;Password=;CharSet=utf8; ");

            List<string> emp = new List<string>();

            conn.Open();

            MySqlCommand comm = new MySqlCommand();
            string query = string.Format("select destination from place where destination LIKE '%{0}%'", destination);
            comm.CommandText = query;
            comm.Connection = conn;

            MySqlDataReader myReader;
            myReader = comm.ExecuteReader();

            while (myReader.Read())
            {
                emp.Add(myReader.GetString(0));
            }
            return emp;
        }


        protected void sew_searchBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}