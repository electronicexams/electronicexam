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
    public partial class show_answer : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string ssq = "select *,(select q_title from question where q_id=answer.q_id)as q_name,(select question_Degree from question where answer_TRUE=answer.answer and q_id=answer.q_id)as q_ans from answer where stu_id =stu_id " + " order by ans_id asc";
            SqlDataAdapter da = new SqlDataAdapter(ssq, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            GrandTotal();
        }
        private void GrandTotal()   // دالة مجموع الدرجات
        {
            Int32 GTotal = 0;

            for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
            {
                string total = (GridView1.Rows[i].FindControl("Label1") as Label).Text;
                GTotal += Convert.ToInt32(total);
            }

            Label1.Text = GTotal.ToString();
        }
    }
}