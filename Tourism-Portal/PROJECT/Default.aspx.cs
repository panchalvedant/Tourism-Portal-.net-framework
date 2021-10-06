using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Data.SqlClient;

namespace PROJECT
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<string> GetEmployeeName(string empName)
        {
            List<string> empResult = new List<string>();
            using (SqlConnection con = new SqlConnection(@" Server=127.0.0.1;Port=3306;Database=tourismport;User ID=root;Password=;CharSet=utf8; "))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from place where destination like '%' +@destination+ '%'";
                    cmd.Connection = con;
                    con.Open();
                    cmd.Parameters.AddWithValue("@destination", empName);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        empResult.Add(dr["destination"].ToString());
                    }
                    con.Close();
                    return empResult;
                }
            }
        }
    }
}