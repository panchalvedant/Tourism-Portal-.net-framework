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
    public partial class Registration : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"Server=127.0.0.1;Port=3306;Database=tourismport;User ID=root;Password=;CharSet=utf8; ");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_click(object sender, EventArgs e)
        {
            if (checkBlankField())
            {

            }
            else
            {
                if (checkPasswordMatch())
                {
                    if (registeruser())
                    {
                        Label1.Text = "New User"+TextBox1.Text+ "has been register succesfully";
                        clearAllfield();
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        Label1.Text = "Error occur when entering the data please enter data again";
                    }
                   
                }

            }
        }

        void clearAllfield()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Label1.Text = "";
        }

        bool registeruser()
        {
            if (createlogin())
            {
                conn.Open();
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
            }
            else
            {
                return false;
            }
        }

        bool createlogin()
        {
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into login values('" + TextBox1.Text + "','" + TextBox4.Text + "')";
            cmd.ExecuteNonQuery();
            conn.Close();
            return true;
        }

        bool checkPasswordMatch()
        {
            if(TextBox4.Text == TextBox5.Text)
            {
                return true;
            }
            else
            {
                Label1.Text = "Password and confirm password does not match";
                return false;
            }
        }

        bool checkBlankField()
        {
            if (TextBox1.Text == "")
            {
                Label1.Text = "Blank Username is not Allowed";
                Label1.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox2.Text == "")
            {
                Label1.Text = "Blank Name is not Allowed";
                Label1.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox3.Text == "")
            {
                Label1.Text = "Blank Email is not Allowed";
                Label1.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox4.Text == "")
            {
                Label1.Text = "Blank Password is not Allowed";
                Label1.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox5.Text == "")
            {
                Label1.Text = "Blank Confirm Password is not Allowed";
                Label1.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox6.Text == "")
            {
                Label1.Text = "Blank Address is not Allowed";
                Label1.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            if (TextBox7.Text == "")
            {
                Label1.Text = "Blank Mobile number is not Allowed";
                Label1.ForeColor = System.Drawing.Color.Red;
                return true;
            }
            return false;
        } 

        



    }
}