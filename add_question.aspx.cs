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
    public partial class add_question : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);
        string AnsTru; // متغير يتعبى لما يختار الاجابة النموذجية ويوضع رقم في جدول الاسئلة للمقارنة مع اجابة الطالب ووضع درجة
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            valuAnswertrue();
            string sql = "insert into question values(@q_title,@sub_id,@Exam_id,@type_question,@ch1,@ch2,@ch3,@question_state,@question_Degree,@answer_TRUE)";
            SqlCommand a = new SqlCommand(sql, con);
            a.Parameters.AddWithValue("@q_title", TextBox1.Text);
            a.Parameters.AddWithValue("@sub_id", DropDownList1.SelectedValue);
            a.Parameters.AddWithValue("@Exam_id", DropDownList2.SelectedValue);
            if (RadioButton1.Checked == true)
            {
                a.Parameters.AddWithValue("@type_question", "صح أو خطأ");
                a.Parameters.AddWithValue("@ch1", "صح");
                a.Parameters.AddWithValue("@ch2", "خطأ");
                a.Parameters.AddWithValue("@ch3", "");
            }
            else if (RadioButton2.Checked == true)
            {
                a.Parameters.AddWithValue("@type_question", "اختر الإجابة الصحيحة");
                a.Parameters.AddWithValue("@ch1", TextBox2.Text);
                a.Parameters.AddWithValue("@ch2", TextBox3.Text);
                a.Parameters.AddWithValue("@ch3", TextBox4.Text);
            }
            if (RadioButton3.Checked == true)
                a.Parameters.AddWithValue("@question_state", true);
            else if (RadioButton4.Checked == true)
                a.Parameters.AddWithValue("@question_state", false);
            a.Parameters.AddWithValue("@question_Degree", TextBox5.Text);
            a.Parameters.AddWithValue("@answer_TRUE", AnsTru);
            con.Open();
            a.ExecuteNonQuery();
            con.Close();

            Label12.Text = "تمت اضافة السؤال بنجاح";
        }

        public void valuAnswertrue()
        {
            if (CheckBox4.Checked == true)
                AnsTru = "صح";
            else if (CheckBox5.Checked == true)
                AnsTru = "خطأ";
            else if (CheckBox1.Checked == true)
                AnsTru = TextBox2.Text;
            else if (CheckBox2.Checked == true)
                AnsTru = TextBox3.Text;
            else if (CheckBox3.Checked == true)
                AnsTru = TextBox4.Text;
        }
        protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox3.Checked == true)
            {
                CheckBox1.Checked = false;
                CheckBox2.Checked = false;
                CheckBox1.Enabled = false;
                CheckBox2.Enabled = false;
                TextBox2.BorderColor = System.Drawing.Color.White;
                TextBox3.BorderColor = System.Drawing.Color.White;
                TextBox4.BorderColor = System.Drawing.Color.Green;
            }
            else if (CheckBox3.Checked == false)
            {
                CheckBox1.Enabled = true;
                CheckBox2.Enabled = true;
                CheckBox3.Checked = false;
                TextBox4.BorderColor = System.Drawing.Color.White;
            }
        }

        protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox4.Checked == true)
                CheckBox5.Enabled = false;
            else if (CheckBox4.Checked == false)
            {
                CheckBox4.Checked = false;
                CheckBox5.Enabled = true;
            }
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox5.Checked == true)
                CheckBox4.Enabled = false;
            else if (CheckBox5.Checked == false)
            {
                CheckBox5.Checked = false;
                CheckBox4.Enabled = true;
            }
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked == true)
            {
                CheckBox1.Checked = false;
                CheckBox3.Checked = false;
                CheckBox1.Enabled = false;
                CheckBox3.Enabled = false;
                TextBox2.BorderColor = System.Drawing.Color.White;
                TextBox3.BorderColor = System.Drawing.Color.Green;
                TextBox4.BorderColor = System.Drawing.Color.White;
            }
            else if (CheckBox2.Checked == false)
            {
                CheckBox1.Enabled = true;
                CheckBox3.Enabled = true;
                CheckBox2.Checked = false;
                TextBox3.BorderColor = System.Drawing.Color.White;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                CheckBox2.Checked = false;
                CheckBox3.Checked = false;
                CheckBox2.Enabled = false;
                CheckBox3.Enabled = false;
                TextBox2.BorderColor = System.Drawing.Color.Green;
                TextBox3.BorderColor = System.Drawing.Color.White;
                TextBox4.BorderColor = System.Drawing.Color.White;
            }
            else if (CheckBox1.Checked == false)
            {
                CheckBox2.Enabled = true;
                CheckBox3.Enabled = true;
                CheckBox1.Checked = false;
                TextBox2.BorderColor = System.Drawing.Color.White;
            }
        }

       protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked == true)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked == true)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }
    }
}