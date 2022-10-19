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
    public partial class Add_Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into admin values (@admin_name,@email,@phone,@password)";
            SqlCommand a = new SqlCommand(sql, con);
            a.Parameters.AddWithValue("@admin_name", TextBox1.Text);
            a.Parameters.AddWithValue("@email", TextBox2.Text);
            a.Parameters.AddWithValue("@phone", TextBox3.Text);
            a.Parameters.AddWithValue("@password", TextBox4.Text);
            con.Open();
            a.ExecuteNonQuery();
            con.Close();
            Label5.Text="تمت الاضافة بنجاح";
        }
    }
}