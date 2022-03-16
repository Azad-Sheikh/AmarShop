using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AmarShop.Admin
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {
                if (!IsPostBack)
                {
                    BindCategory();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["AmarShopCon"].ConnectionString;
        }
        private void BindCategory()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select distinct CID,CName from Category", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CName";
                ddlCategory.DataValueField = "CID";
                ddlCategory.DataBind();
            }
            else
            {
                ddlCategory.DataSource = null;
                ddlCategory.DataBind();
            }
        }
        private void BindGridView()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select Image,IName,Price,Size,Qnt,AQnt,SQnt from Item where CName=@CName", con);
            cmd.Parameters.AddWithValue("@CName", ddlCategory.SelectedItem.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindGridView();
        }
    }
}