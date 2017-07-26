using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MR_Software_Web
{
    public partial class Doctor_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rdm_male_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string connectionstring = "Server=ARI-PC;Database=MRSW;Integrated Security=True";


            var cmd2 = "Insert into [DoctorDetails]([Name],[Mobile],[Email],[DOB] ,[Address],[Gender],[Phone],[MaritalStatus],[Grade],[ResidentialAddress]) values(@Name,@Mobile,@Email,@DOB,@Address,@Gender,@Phone,@MaritalStatus,@Grade,@ResidentialAddress)";
            using (SqlConnection cnn = new SqlConnection(connectionstring))
            {
                using (SqlCommand cmd = new SqlCommand(cmd2, cnn))
                {

                    //  cmd.Parameters.AddWithValue("@DoctorID", txt_name.Text);
                    cmd.Parameters.AddWithValue("@Name", txt_name.Text);
                    cmd.Parameters.AddWithValue("@Mobile", txt_mobile_no.Text);
                    cmd.Parameters.AddWithValue("@Email", txt_email.Text);
                    cmd.Parameters.AddWithValue("@DOB", txt_dob.Text);
                    cmd.Parameters.AddWithValue("@Address", txt_addres.Text);
                    cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Phone", txt_phone.Text);
                    cmd.Parameters.AddWithValue("@MaritalStatus", RadioButtonList3.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Grade", RadioButtonList2.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@ResidentialAddress", txt_rd_addres.Text);


                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    Label1.Text = "Data saved";
                }
            }
        }
    }
}

     