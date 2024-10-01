using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANTHUCAN_DANANG
{
    public partial class DANGNHAP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString);
            myCon.Open();
            string qry = "SELECT * FROM TAIKHOAN WHERE TENDANGNHAP='" + TextBox1.Text + "' AND MATKHAU='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(qry, myCon);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("TRANGCHU.aspx");
            }
            else
            {
                Label1.Text = "UserId & Password Is not correct. Try again..!!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DANGKY.aspx");
        }

    }
}