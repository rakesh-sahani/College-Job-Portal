using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace College_Job_Portal.admin
{
    public partial class Display : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            string MySqlConnect = ConfigurationManager.ConnectionStrings["MySqlConnect"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(MySqlConnect))
            {

                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select E_NO, FName, DOB, Course, Year, Email, Mobile,Photo  from student_info";
               cmd.ExecuteNonQuery();
                DataTable DT = new DataTable();
                MySqlDataAdapter MDA = new MySqlDataAdapter(cmd);
                MDA.Fill(DT);
                GridView1.DataSource = DT;
                GridView1.DataBind();
                con.Close();




            }
        }

        protected void btn_Search(object sender, EventArgs e)
        {
            String FName,Course, Year;
            
            FName = name.Text;         
            Course = Scourse.SelectedItem.Text;
            Year = SYear.SelectedItem.Text;

            string MySqlConnect = ConfigurationManager.ConnectionStrings["MySqlConnect"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(MySqlConnect))
            {

                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select E_NO, FName, DOB, Course, Year, Email, Mobile,Photo from student_info where fname = '" + FName + "' and course = '" + Course + "' and year= '" + Year + "'";
                cmd.ExecuteNonQuery();
                DataTable DT = new DataTable();
                MySqlDataAdapter MDA = new MySqlDataAdapter(cmd);
                MDA.Fill(DT);
                GridView1.DataSource = DT;
                GridView1.DataBind();
                con.Close();




            }
        }

        protected void btn_Update(object sender, EventArgs e)
        {
            String FName, Course, Year;

            FName = name.Text;
            Course = Scourse.SelectedItem.Text;
            Year = SYear.SelectedItem.Text;

            string MySqlConnect = ConfigurationManager.ConnectionStrings["MySqlConnect"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(MySqlConnect))
            {

                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select E_NO, FName, DOB, Course, Year, Email, Mobile,Photo from student_info where fname = '" + FName + "' and course = '" + Course + "' and year= '" + Year + "'";
                cmd.ExecuteNonQuery();
                DataTable DT = new DataTable();
                MySqlDataAdapter MDA = new MySqlDataAdapter(cmd);
                MDA.Fill(DT);
                GridView1.DataSource = DT;
                GridView1.DataBind();
                con.Close();




            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            name.Text = GridView1.SelectedRow.Cells[0].Text;

           
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                byte[] bytes = (byte[])(e.Row.DataItem as DataRowView)["Photo"];
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                (e.Row.FindControl("Photo") as Image).ImageUrl = "data:image/png;base64," + base64String;
            }
        }



    }
}