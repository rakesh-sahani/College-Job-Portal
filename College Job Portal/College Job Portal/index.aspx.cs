using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace College_Job_Portal
{
    public partial class index : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_Sent(object sender, EventArgs e)
        {
            String cname, mail, msg, num;
            cname = name.Text;
            mail = email.Text;
            msg = message.Text;
            num = number.Text;
            string MySqlConnect = ConfigurationManager.ConnectionStrings["MySqlConnect"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(MySqlConnect))
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into contact (name,email,contact,msg) values('" + cname + "','" + mail + "','" + num + "','" + msg + "')";
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Label.Text = "Message Sent";
                    Session["msg"] = Label.Text;
                    Response.Redirect("index.aspx");
                }
                con.Close();



            }
        }
    }
}