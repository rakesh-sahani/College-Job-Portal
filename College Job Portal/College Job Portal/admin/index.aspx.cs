using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;


namespace College_Job_Portal.admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String user, pass;
            user = txtUserName.Text;
            pass = txtPassword.Text;
            Label.Text = user + pass ;
            string MySqlConnect = ConfigurationManager.ConnectionStrings["MySqlConnect"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(MySqlConnect))
            {
                con.Open();
                MySqlCommand cmd = con.CreateCommand();
                MySqlDataAdapter MData = new MySqlDataAdapter();
                DataSet DS = new DataSet();               
                cmd.CommandText = "select * from  login where user = '"+ txtUserName.Text + "' and pass = '" + txtPassword.Text + "'";
                MData.SelectCommand = cmd;
                MData.Fill(DS, "login");                
                if(DS.Tables[0].Rows.Count >  0)
                {
                    Label.Text = "Message Sent";
                    Session["msg"] = Label.Text;
                    Response.Redirect("~/admin/Dashboard.aspx");
                }
                else
                {
                    Label.Text = "Invalid Username & Password";                    
                }
              
                con.Close();
               
                

            }
        }

      
    }
}