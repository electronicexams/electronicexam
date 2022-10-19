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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "مدير النظام")
            {
                 
                string sql = "select * from admin where (email=@im or phone=@ph)and password=@pass";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@im", TextBox1.Text);
                x.Parameters.AddWithValue("@ph", TextBox1.Text);
                x.Parameters.AddWithValue("@pass", TextBox2.Text);
                con.Open();
                SqlDataReader r = x.ExecuteReader();
                if (r.HasRows == true)
                {
                    while (r.Read())
                    {
                        Session["adminNo"] = r["admin_id"].ToString();
                        Session["adminName"] = r["admin_name"].ToString();
                    }
                    con.Close();
                    Response.Redirect("Admin_admin.aspx");
                }
                else
                {
                    Label1.Text = "خطأ في تسجيل الدخول";
                }
                r.Close();
                con.Close();
                TextBox2.Text = ""; TextBox2.Focus();
            }
            if (DropDownList1.SelectedValue == "مـــدرس")
            {
                string sql = "select * from Teachers where email=@im and password=@pass";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@im", TextBox1.Text);
                x.Parameters.AddWithValue("@pass", TextBox2.Text);
                con.Open();
                SqlDataReader r = x.ExecuteReader();
                if (r.HasRows == true)
                {
                    while (r.Read())
                    {
                        Session["Teach_ID"] = r["Teach_ID"].ToString();
                        Session["Teach_Name"] = r["Teach_Name"].ToString();
                    }
                    con.Close();
                    Response.Redirect("TeachrMain.aspx");
                }
                else
                {
                    Label1.Text = "خطأ في تسجيل الدخول";
                }
                r.Close();
                con.Close();
                TextBox2.Text = ""; TextBox2.Focus();
            }
            if (DropDownList1.SelectedValue == "طـــالب")
            {
                string sql = "select * from student where email=@im and password=@pass";
                SqlCommand x = new SqlCommand(sql, con);
                x.Parameters.AddWithValue("@im", TextBox1.Text);
                x.Parameters.AddWithValue("@pass", TextBox2.Text);
                con.Open();
                SqlDataReader r = x.ExecuteReader();
                if (r.HasRows == true)
                {
                    while (r.Read())
                    {
                        Session["stu_id"] = r["stu_id"].ToString();
                        Session["stu_name"] = r["stu_name"].ToString();
                        Session["NID"] = r["NID"].ToString();
                    }
                    con.Close();
                    Response.Redirect("show_exam.aspx");
                }
                else
                {
                    Label1.Text = "خطأ في تسجيل الدخول";
                }
                r.Close();
                con.Close();
                TextBox2.Text = ""; TextBox2.Focus();
            }
        }
    }
}