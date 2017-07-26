using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.Common;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MR_Software_Web
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string connectionstring = "Server=ARI-PC;Database=MRSW;Integrated Security=True";


            var cmd2 = "insert into Profile_Details(Name,Email,Mobile,Address,DOB) values(@Name,@Email,@Mobile,@Address,@DOB)";
            using (SqlConnection cnn = new SqlConnection(connectionstring))
            {
                using (SqlCommand cmd = new SqlCommand(cmd2, cnn))
                {
                    cmd.Parameters.AddWithValue("@Name", txt_name.Text);
                    cmd.Parameters.AddWithValue("@Email", txt_email.Text);
                    cmd.Parameters.AddWithValue("@Mobile", txt_mobile.Text);
                      cmd.Parameters.AddWithValue("@Address", txt_address.Text);
                      cmd.Parameters.AddWithValue("@DOB", txt_dob.Text);

               

                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                }
            }
          

          
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           

        }

        protected void btn_edit1_Click(object sender, EventArgs e)
        {
            lbl_name.Visible = false;
            lbl_address.Visible = false;
            lbl_dob.Visible = false;
            lbl_email.Visible = false;
            lbl_mobile_no.Visible = false;
            txt_address.Visible = false;
            txt_dob.Visible = false;
            txt_email.Visible = false;
            txt_mobile.Visible = false;
            txt_name.Visible = false;
            lbl_ent_id.Visible = true;
            txt_srch_eml.Visible = true;
            btn_submit.Visible = true;
            btn_save.Visible = false;
            btn_edit1.Visible = false;

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
           

            idcheck();

            string connectionstring1= "Server=ARI-PC;Database=MRSW;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring1);
          con.Open();
            
     
            String      str = "select * from Profile_Details where Email='" + txt_srch_eml.Text.Trim()+"'";
            SqlCommand com;

        com = new SqlCommand(str, con);

        SqlDataReader reader = com.ExecuteReader();

        if (reader.Read())
        {
            txt_name.Text = reader["Name"].ToString();
            txt_email.Text = reader["Email"].ToString();
            txt_mobile.Text = reader["Mobile"].ToString();
            txt_address.Text = reader["Address"].ToString();
             txt_dob.Text=reader["DOB"].ToString();
            reader.Close();

            con.Close();

        }


        }


        public void idcheck()
        {

           





            string connectionstring2= "Server=ARI-PC;Database=MRSW;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring2);

            con.Open();

            String str = "select count(*) from Profile_Details where Email='" + txt_srch_eml.Text.Trim() + "'";

            SqlCommand com = new SqlCommand(str, con);

            int count = Convert.ToInt32(com.ExecuteScalar());

            if (count > 0)
            {
                lbl_msg.Visible = true;
                lbl_msg.Text = "Id Exist";
                lbl_name.Visible = true;
                lbl_address.Visible = true;
                lbl_dob.Visible = true;
                lbl_email.Visible = true;
                lbl_mobile_no.Visible = true;
                txt_address.Visible = true;
                txt_dob.Visible = true;
                txt_email.Visible = true;
                txt_mobile.Visible = true;
                txt_name.Visible = true;
                lbl_ent_id.Visible = false;
                txt_srch_eml.Visible = false;
                btn_submit.Visible = false;
                btn_save.Visible = false;
                btn_edit1.Visible = true;
               

            }

            else
            {
                lbl_msg.Visible = true;
                lbl_msg.Text = "Id Does not Exist";

            }



        }




    }
}