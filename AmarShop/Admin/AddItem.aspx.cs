using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;

namespace AmarShop.Admin
{
    public partial class AddItem : System.Web.UI.Page
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

        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            if (IsFormValidate())
            {
                FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/img/") + FileUpload2.FileName);
                FileUpload3.SaveAs(Server.MapPath("~/img/") + FileUpload3.FileName);

                SqlConnection con = new SqlConnection(GetConnectionString());
                SqlCommand cmd = new SqlCommand("insert into Item(IName,Detail,Price,Image,Qnt,CName,Image1,Image2,Size,EntryDate) values(@NAME,@DETAIL,@PRICE,@IMG,@qnt,@CNAME,@img1,@img2,@size,GETDATE())", con);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.Parameters.AddWithValue("@NAME",txtItemName.Text);
                cmd.Parameters.AddWithValue("@DETAIL",txtDesc.Text);
                cmd.Parameters.AddWithValue("@PRICE",Convert.ToDouble(txtPrice.Text));
                cmd.Parameters.AddWithValue("@IMG","~/img/"+FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@qnt", Convert.ToInt32(txtQty.Text));
                cmd.Parameters.AddWithValue("@CNAME",ddlCategory.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@img1", "~/img/" + FileUpload2.FileName);
                cmd.Parameters.AddWithValue("@img2", "~/img/" + FileUpload3.FileName);
                cmd.Parameters.AddWithValue("@size",ddlCategory.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Item added successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Validation error')</script>");
            }
        }
        private bool IsFormValidate()
        {
            if (txtItemName.Text == String.Empty)
            {
                Response.Write("<script>alert('Item name is Required')</script>");
                txtItemName.Text = string.Empty;
                txtItemName.Focus();
                return false;
            }
            if (txtDesc.Text == String.Empty)
            {
                Response.Write("<script>alert('Description is Required')</script>");
                txtDesc.Text = string.Empty;
                txtDesc.Focus();
                return false;
            }
            if (txtPrice.Text == String.Empty)
            {
                Response.Write("<script>alert('Price details is Required')</script>");
                txtPrice.Text = string.Empty;
                txtPrice.Focus();
                return false;
            }
            if (txtQty.Text == String.Empty)
            {
                Response.Write("<script>alert('Quantity is Required')</script>");
                txtQty.Text = string.Empty;
                txtQty.Focus();
                return false;
            }
            if (ddlCategory.SelectedItem.Text == "")
            {
                Response.Write("<script>alert('Category is Required')</script>");
                ddlCategory.Focus();
                return false;
            }
            if (ddlsize.SelectedIndex == -1)
            {
                Response.Write("<script>alert('Size is Required')</script>");
                ddlCategory.Focus();
                return false;
            }

            return true;
        }
        private void BindCategory()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("select distinct CID,CName from Category", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

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
       
    }
}