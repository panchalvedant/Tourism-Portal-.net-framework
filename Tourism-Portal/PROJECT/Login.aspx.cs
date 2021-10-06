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
    public partial class Login : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"Server=127.0.0.1;Port=3306;Database=tourismport;User ID=root;Password=;CharSet=utf8; ");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select Username,Password from login";
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            string uname;
            string pass;
            // string uname1;
            // string pass1;
            for (int i = 0; i < 100; i++)
            {


                uname = ds.Tables[0].Rows[i]["Username"].ToString();
                pass = ds.Tables[0].Rows[i]["Password"].ToString();
                //  uname1 = ds.Tables[0].Rows[2]["Username"].ToString();
                // pass1 = ds.Tables[0].Rows[2]["Password"].ToString();
                conn.Close();
                if (uname == TextBox1.Text && pass == TextBox2.Text)
                {
                    Session["Username"] = uname;
                    Response.Redirect("Home.aspx");
                }
                //else if(uname1 == TextBox1.Text && pass1 == TextBox2.Text)
                //{
                //    Session["Username"] = uname1;
                //   Response.Redirect("Home.aspx");
                // }
                else
                {
                    Label1.Text = "Invaild Username or Password";
                }
            }
            

        }
    }
}