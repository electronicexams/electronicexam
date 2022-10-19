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
    public partial class student_student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label12.Text = Session["Exam_id"].ToString();
            Label18.Text = Session["stu_name"].ToString();
            Label19.Text = Session["stu_id"].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            string Sql = "select q_title,q_id,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label7.Text + "' and q_id !='" + Label9.Text + "' and q_id !='" + Label10.Text + "' and q_id !='" + Label11.Text + "' ) and Exam_id=" + Label12.Text + "and question_state=1 ";
            SqlCommand x = new SqlCommand(Sql, con);
            con.Open();
            SqlDataReader dr = x.ExecuteReader();
            if (dr.HasRows == true)
            {
                while (dr.Read())
                {
                    Label2.Text = dr["q_title"].ToString();
                    Label8.Text = dr["q_id"].ToString();
                    Label14.Text = dr["question_Degree"].ToString();
                    RadioButton4.Text = "صح";
                    RadioButton5.Text = "خطأ";
                }
            }
            else
                Label2.Text = "لا يوجد سؤال";
            con.Close();


            string SQL1 = "select q_title,q_id,ch1,ch2,ch3,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label7.Text + "' and q_id !='" + Label9.Text + "' and q_id !='" + Label10.Text + "' and q_id !='" + Label11.Text + "' ) and Exam_id=" + Label12.Text + "and question_state=1 ";
            SqlCommand x1 = new SqlCommand(SQL1, con);
            con.Open();
            SqlDataReader dr1 = x1.ExecuteReader();
            if (dr1.HasRows == true)
            {
                while (dr1.Read())
                {
                    Label2.Text = dr1["q_title"].ToString();
                    Label8.Text = dr1["q_id"].ToString();
                    RadioButton4.Text = dr1["ch1"].ToString();
                    RadioButton5.Text = dr1["ch2"].ToString();
                    RadioButton6.Text = dr1["ch3"].ToString();
                    Label14.Text = dr1["question_Degree"].ToString();
                }
            }
            else
                Label2.Text = "لا يوجد سؤال";
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            string SQL = "select q_title,q_id,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label7.Text + "' and q_id !='" + Label8.Text + "' and q_id !='" + Label10.Text + "' and q_id !='" + Label11.Text + "' ) and Exam_id=" + Label12.Text + " and question_state=1 ";
            SqlCommand x = new SqlCommand(SQL, con);
            con.Open();
            SqlDataReader dr = x.ExecuteReader();
            if (dr.HasRows == true)
            {
                while (dr.Read())
                {
                    Label3.Text = dr["q_title"].ToString();
                    Label9.Text = dr["q_id"].ToString();
                    Label15.Text = dr["question_Degree"].ToString();
                    RadioButton7.Text = "صح";
                    RadioButton8.Text = "خطأ";
                }
            }
            con.Close();

            string SQL1 = "select q_title,q_id,ch1,ch2,ch3,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label7.Text + "' and q_id !='" + Label8.Text + "' and q_id !='" + Label10.Text + "' and q_id !='" + Label11.Text + "' ) and Exam_id=" + Label12.Text + " and question_state=1 ";
            SqlCommand x1 = new SqlCommand(SQL1, con);
            con.Open();
            SqlDataReader dr1 = x1.ExecuteReader();
            if (dr1.HasRows == true)
            {
                while (dr1.Read())
                {
                    Label3.Text = dr1["q_title"].ToString();
                    Label9.Text = dr1["q_id"].ToString();
                    Label15.Text = dr1["question_Degree"].ToString();
                    RadioButton7.Text = dr1["ch1"].ToString();
                    RadioButton8.Text = dr1["ch2"].ToString();
                    RadioButton9.Text = dr1["ch3"].ToString();
                }
            }
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
            string SQL = "select q_title,q_id,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label7.Text + "' and q_id !='" + Label8.Text + "' and q_id !='" + Label9.Text + "' and q_id !='" + Label11.Text + "' ) and Exam_id=" + Label12.Text + " and question_state=1 ";
            SqlCommand x = new SqlCommand(SQL, con);
            con.Open();
            SqlDataReader dr = x.ExecuteReader();
            if (dr.HasRows == true)
            {
                while (dr.Read())
                {
                    Label4.Text = dr["q_title"].ToString();
                    Label10.Text = dr["q_id"].ToString();
                    Label16.Text = dr["question_Degree"].ToString();
                    RadioButton10.Text = "صح";
                    RadioButton11.Text = "خطأ";
                }
            }
            con.Close();

            string SQL1 = "select q_title,q_id,ch1,ch2,ch3,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label7.Text + "' and q_id !='" + Label8.Text + "' and q_id !='" + Label9.Text + "' and q_id !='" + Label11.Text + "' ) and Exam_id=" + Label12.Text + " and question_state=1 ";
            SqlCommand x1 = new SqlCommand(SQL1, con);
            con.Open();
            SqlDataReader dr1 = x1.ExecuteReader();
            if (dr1.HasRows == true)
            {
                while (dr1.Read())
                {
                    Label4.Text = dr1["q_title"].ToString();
                    Label10.Text = dr1["q_id"].ToString();
                    Label16.Text = dr1["question_Degree"].ToString();
                    RadioButton10.Text = dr1["ch1"].ToString();
                    RadioButton11.Text = dr1["ch2"].ToString();
                    RadioButton12.Text = dr1["ch3"].ToString();
                }
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                Button10.Enabled = true;
                Button11.Enabled = true;
                Button12.Enabled = true;
                Button13.Enabled = true;
                Button4.Enabled = true;

                MultiView1.ActiveViewIndex = 0;
                string SQL = "select q_title,q_id,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label8.Text + "' and q_id !='" + Label9.Text + "' and q_id !='" + Label10.Text + "' and q_id !='" + Label11.Text + "' ) and Exam_id=" + Label12.Text + " and question_state=1 ";
                SqlCommand x = new SqlCommand(SQL, con);
                con.Open();
                SqlDataReader dr = x.ExecuteReader();
                if (dr.HasRows == true)
                {
                    while (dr.Read())
                    {
                        Label1.Text = dr["q_title"].ToString();
                        Label7.Text = dr["q_id"].ToString();
                        Label13.Text = dr["question_Degree"].ToString();
                        RadioButton1.Text = "صح";
                        RadioButton2.Text = "خطأ";
                    }
                }
                con.Close();

                string SQL1 = "select q_title,q_id,ch1,ch2,ch3,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label8.Text + "' and q_id !='" + Label9.Text + "' and q_id !='" + Label10.Text + "' and q_id !='" + Label11.Text + "' ) and Exam_id=" + Label12.Text + " and question_state=1 ";
                SqlCommand x1 = new SqlCommand(SQL1, con);
                con.Open();
                SqlDataReader dr1 = x1.ExecuteReader();
                if (dr1.HasRows == true)
                {
                    while (dr1.Read())
                    {
                        Label1.Text = dr1["q_title"].ToString();
                        Label7.Text = dr1["q_id"].ToString();
                        Label13.Text = dr1["question_Degree"].ToString();
                        RadioButton1.Text = dr1["ch1"].ToString();
                        RadioButton2.Text = dr1["ch2"].ToString();
                        RadioButton3.Text = dr1["ch3"].ToString();
                    }
                }
                con.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "صح أو خطأ")
            {
                RadioButton3.Visible = false;

                RadioButton6.Visible = false;
                RadioButton9.Visible = false;
                RadioButton12.Visible = false;
                RadioButton15.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "اختر الإجابة الصحيحة")
            {
                RadioButton3.Visible = true;
                RadioButton6.Visible = true;
                RadioButton9.Visible = true;
                RadioButton12.Visible = true;
                RadioButton15.Visible = true;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
            string SQL = "select q_title,q_id,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label7.Text + "' and q_id !='" + Label8.Text + "' and q_id !='" + Label9.Text + "' and q_id !='" + Label10.Text + "' ) and Exam_id=" + Label12.Text + " and question_state=1 ";
            SqlCommand x = new SqlCommand(SQL, con);
            con.Open();
            SqlDataReader dr = x.ExecuteReader();
            {
                while (dr.Read())
                {
                    Label5.Text = dr["q_title"].ToString();
                    Label11.Text = dr["q_id"].ToString();
                    Label17.Text = dr["question_Degree"].ToString();
                    RadioButton13.Text = "صح";
                    RadioButton14.Text = "خطأ";
                }
            }
            con.Close();


            string SQL1 = "select q_title,q_id,ch1,ch2,ch3,question_Degree from question where type_question ='" + DropDownList1.SelectedValue + "' and (q_id !='" + Label7.Text + "' and q_id !='" + Label8.Text + "' and q_id !='" + Label9.Text + "' and q_id !='" + Label10.Text + "' ) and Exam_id=" + Label12.Text + " and question_state=1 ";
            SqlCommand x1 = new SqlCommand(SQL1, con);
            con.Open();
            SqlDataReader dr1 = x1.ExecuteReader();
            if (dr1.HasRows == true)
            {
                while (dr1.Read())
                {
                    Label5.Text = dr1["q_title"].ToString();
                    Label11.Text = dr1["q_id"].ToString();
                    Label17.Text = dr1["question_Degree"].ToString();
                    RadioButton13.Text = dr1["ch1"].ToString();
                    RadioButton14.Text = dr1["ch2"].ToString();
                    RadioButton15.Text = dr1["ch3"].ToString();
                }
            }
            con.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "صح أو خطأ")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label11.Text);
                if (RadioButton13.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton13.Text);
                else
                    x.Parameters.AddWithValue("@answer", RadioButton14.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button4.Enabled = false;
                MultiView1.ActiveViewIndex = 0;
            }
            else if (DropDownList1.SelectedValue == "اختر الإجابة الصحيحة")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("q_id", Label11.Text);
                if (RadioButton13.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton13.Text);
                else if (RadioButton14.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton14.Text);
                else if (RadioButton15.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton15.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());

                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button4.Enabled = false;
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "صح أو خطأ")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label7.Text);
                if (RadioButton1.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton1.Text);
                else
                    x.Parameters.AddWithValue("@answer", RadioButton2.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button13.Enabled = false;
            }
            else if (DropDownList1.SelectedValue == "اختر الإجابة الصحيحة")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label7.Text);
                if (RadioButton1.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton1.Text);
                else if (RadioButton2.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton2.Text);
                else if (RadioButton3.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton3.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button13.Enabled = false;
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "صح أو خطأ")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label8.Text);
                if (RadioButton4.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton4.Text);
                else
                    x.Parameters.AddWithValue("@answer", RadioButton5.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button12.Enabled = false;
            }
            else if (DropDownList1.SelectedValue == "اختر الإجابة الصحيحة")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label8.Text);
                if (RadioButton4.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton4.Text);
                else if (RadioButton5.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton5.Text);
                else if (RadioButton6.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton6.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button12.Enabled = false;
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "صح أو خطأ")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label9.Text);
                if (RadioButton7.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton7.Text);
                else
                    x.Parameters.AddWithValue("@answer", RadioButton8.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button11.Enabled = false;
            }
            else if (DropDownList1.SelectedValue == "اختر الإجابة الصحيحة")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label9.Text);
                if (RadioButton7.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton7.Text);
                else if (RadioButton8.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton8.Text);
                else if (RadioButton9.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton9.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button11.Enabled = false;
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "صح أو خطأ")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label10.Text);
                if (RadioButton10.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton10.Text);
                else
                    x.Parameters.AddWithValue("@answer", RadioButton11.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button10.Enabled = false;
            }
            else if (DropDownList1.SelectedValue == "اختر الإجابة الصحيحة")
            {
                string sql = "insert into answer values (@q_id,@answer,@data_ans,@stu_id)";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@q_id", Label10.Text);
                if (RadioButton10.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton10.Text);
                else if (RadioButton11.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton11.Text);
                else if (RadioButton12.Checked == true)
                    x.Parameters.AddWithValue("@answer", RadioButton12.Text);
                x.Parameters.AddWithValue("@data_ans", DateTime.Now);
                x.Parameters.AddWithValue("@stu_id", Session["stu_id"].ToString());
                con.Open();
                x.ExecuteNonQuery();
                con.Close();
                Button10.Enabled = false;
            }
        }
    }
}