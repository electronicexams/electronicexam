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
    public partial class add_student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into student values (@stu_id,@stu_name,@NID,@Email,@password,@Stu_State)";
            SqlCommand x = new SqlCommand(sql, con);
            x.Parameters.AddWithValue("@stu_id", TextBox1.Text);
            x.Parameters.AddWithValue("@stu_name", TextBox2.Text);
            x.Parameters.AddWithValue("@NID", TextBox3.Text);
            x.Parameters.AddWithValue("@Email", TextBox4.Text);
            x.Parameters.AddWithValue("@password", TextBox5.Text);
            x.Parameters.AddWithValue("@Stu_State", true);
            con.Open();
            x.ExecuteNonQuery();
            con.Close();
            Label6.Text = "تمت الاضافة بنجاح";

            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
            TextBox1.Focus();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label6.Text = "";
        }
    }
}