using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AmarShop
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Registration();
        }
        private void Registration()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AmarShopCon"].ConnectionString);
                SqlCommand cmd = new SqlCommand("insert into tblUserMaster(Name,Surname,Address,City, Pincode,Mobile,Email,Password,Gender,EntryDate) values(@Name,@Surname,@Address,@City, @Pincode,@Mobile,@Email,@Password,@Gender,GETDATE())", con);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@Surname", txtSurname.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@Pincode", txtPincode.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                clr();
                Response.Write("<script>alert('Success')</script>");



            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        private void clr()
        {
            txtname.Text = String.Empty;
            txtSurname.Text = String.Empty;
            txtAddress.Text = String.Empty;
            txtCity.Text = String.Empty;
            txtPincode.Text = String.Empty;
            txtMobile.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtpass.Text = String.Empty;
            ddlGender.SelectedIndex = -1;
            txtDate.Text = String.Empty;
            txtname.Focus();
        }
    }
}