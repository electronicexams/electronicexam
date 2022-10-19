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
    public partial class show_exam : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select *,(select sub_name from subject where sub_id=Exam.sub_id )as sub_name from Exam where Exam_state=1";
            SqlDataAdapter DA = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            DA.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Exam_id"] = GridView1.SelectedDataKey.Value.ToString();
            Response.Redirect("student_student.aspx");
        }
    }
}