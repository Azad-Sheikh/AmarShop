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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AmarShopCon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Remove("UserName");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsformValid())
            {
                try
                {
                    //Response.Write("<script>alert('Success')</script>");
                    SqlCommand cmd = new SqlCommand("select Email,Password from tblUserMaster where Email=@Email AND Password=@Password", con);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    cmd.Parameters.AddWithValue("@Email", txtuserid.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtpass.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {

                            Session["UserName"] = dr.GetValue(0).ToString();
                            Response.Write("<script>alert('Login success')</script>");
                            Response.Redirect("~/User/Home.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Login...')</script>");
                        //Response.Redirect("~/Default.aspx");
                        txtuserid.Text = string.Empty;
                        txtpass.Text = string.Empty;
                        txtuserid.Focus();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                //Response.Write("<script>alert('Validation error')</script>");
            }
        }
        private bool IsformValid()
        {
            if (txtuserid.Text == String.Empty)
            {
                Response.Write("<script>alert('UserName is Required')</script>");
                txtuserid.Text = String.Empty;
                txtuserid.Focus();
                return false;

            }
            if (txtpass.Text == String.Empty)
            {
                Response.Write("<script>alert('Password is Required')</script>");
                txtpass.Text = String.Empty;
                txtpass.Focus();
                return false;

            }
            return true;

        }
    }
}