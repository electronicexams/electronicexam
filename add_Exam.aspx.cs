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
    public partial class add_Exam : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into Exam values (@title,@hour,@sub_id,@Exam_state)";
            SqlCommand a = new SqlCommand(sql, con);
            a.Parameters.AddWithValue("@title", TextBox1.Text);
            a.Parameters.AddWithValue("@hour", DropDownList1.SelectedValue);
            a.Parameters.AddWithValue("@sub_id", DropDownList2.SelectedValue);
            if (RadioButton1.Checked == true)
                a.Parameters.AddWithValue("@Exam_state", true);
            else
                a.Parameters.AddWithValue("@Exam_state", false);
            con.Open();
            a.ExecuteNonQuery();
            con.Close();
            Label6.Text="تمت الاضافة بنجاح";
        }
    }
}