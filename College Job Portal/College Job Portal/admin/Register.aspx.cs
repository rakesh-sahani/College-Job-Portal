using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace College_Job_Portal.admin
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Submit(object sender, EventArgs e)
        {
            String E_NO, FName, DOB, Gen, Course, Year, Email, Mobile, Password;
            E_NO = rollno.Text;
            FName = name.Text;
            DOB = dob.Text;
            Gen = Gender.SelectedItem.Text;
            Course = Scourse.SelectedItem.Text;
            Year = SYear.SelectedItem.Text;
            Email = email.Text;
            Mobile = mob.Text;
            Password = password.Text;
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);

                    string MySqlConnect = ConfigurationManager.ConnectionStrings["MySqlConnect"].ConnectionString;
                    using (MySqlConnection con = new MySqlConnection(MySqlConnect))
                    {

                        con.Open();
                        MySqlCommand cmd = con.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "insert into student_info (E_NO, FName, DOB, Gender, Course, Year, Email, Mobile, Password,Photo) values ('" + E_NO + "','" + FName + "','" + DOB + "','" + Gen + "','" + Course + "','" + Year + "','" + Email + "','" + Mobile + "','" + Password + "',@Content)";
                        cmd.Parameters.AddWithValue("@Content", bytes);
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                           
                            Label.Text = "File Uploaded Successfully";
                            Session["REG"] = Label.Text;
                            Response.Redirect("~/admin/Register.aspx");
                        }

                        else
                        {
                            Label.Text = "Not Uploaded";
                            con.Close();

                        }


                        

                    }
                }
            }
        }
    }
}