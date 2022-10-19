using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace ExamOnline
{
    public partial class add_Subject : System.Web
       .UI.Page
    { SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into subject values (@sub_id,@sub_name)";
            SqlCommand a = new SqlCommand(sql, con);
            a.Parameters.AddWithValue("@sub_id", TextBox1.Text);
            a.Parameters.AddWithValue("@sub_name", TextBox2.Text);
            con.Open();
            a.ExecuteNonQuery();
            con.Close();
            Label5.Text = "تمت الاضافة بنجاح";

        }
    }
}