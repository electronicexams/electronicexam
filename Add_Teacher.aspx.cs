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
    public partial class Add_Teacher : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label6.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into Teachers values (@Teach_Name,@Email,@password,@Teach_State)";
            SqlCommand x = new SqlCommand(sql, con);
            x.Parameters.AddWithValue("@Teach_Name", TextBox1.Text);
            x.Parameters.AddWithValue("@Email", TextBox4.Text);
            x.Parameters.AddWithValue("@password", TextBox5.Text);
            x.Parameters.AddWithValue("@Teach_State", true);
            con.Open();
            x.ExecuteNonQuery();
            con.Close();
            Label6.Text = "تمت الاضافة بنجاح";

            TextBox1.Text = TextBox4.Text = TextBox5.Text = "";
            TextBox1.Focus();
        }
    }
}