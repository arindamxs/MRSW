using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MR_Software_Web
{
    public partial class MrActivity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string connectionstring = "Server=ARI-PC;Database=MRSW;Integrated Security=True";

            var cmd = "insert into MrActivity (mrname,date,dctname,area,activityno) values(@mrname,@date,@dctname,@area,@activityno)";
            using (SqlConnection cnn = new SqlConnection(connectionstring)) 
            {
                using (SqlCommand cmd2 = new SqlCommand(cmd, cnn))
                {
                    cmd2.Parameters.Add("@mrname", TextBox1.Text);
                    cmd2.Parameters.Add("@date", TextBox2.Text);
                    cmd2.Parameters.Add("@dctname", TextBox3.Text);
                    cmd2.Parameters.Add("@area", TextBox4.Text);
                    cmd2.Parameters.Add("@activityno", TextBox5.Text);



                    cnn.Open();
                    cmd2.ExecuteNonQuery();
                    cnn.Close();
                }

                

            }



        }
    }
}