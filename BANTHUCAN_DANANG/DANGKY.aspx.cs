using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANTHUCAN_DANANG
{
    public partial class DANGKY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString);

            long result; // Dùng kiểu `long` để đảm bảo có thể chứa 10 chữ số

            if (TextBox1 != null && TextBox2 != null && !string.IsNullOrWhiteSpace(TextBox1.Text) && !string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                if (Int64.TryParse(TextBox1.Text, out result))
                {
                    if(TextBox2.Text == TextBox3.Text)
                    {
                        if (TextBox1.Text.Length == 10)
                        {
                            //SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString);
                            myCon.Open();
                            string qry = "SELECT * FROM TAIKHOAN WHERE TENDANGNHAP='" + TextBox1.Text + "'";
                            SqlCommand cmd = new SqlCommand(qry, myCon);
                            SqlDataReader sdr = cmd.ExecuteReader();
                            if (sdr.Read())
                            {
                                Label1.Text = "TÊN ĐĂNG NHẬP BỊ TRÙNG, VUI LÒNG CHỌN TÊN KHÁC";
                            }
                            else
                            {
                                myCon = DBClass.OpenConn();
                                using (SqlCommand myCom = new SqlCommand("dbo.usp_InsNguoidung", myCon))
                                {
                                    myCom.CommandType = CommandType.StoredProcedure;
                                    myCom.Parameters.Add("@TENDANGNHAP", SqlDbType.NVarChar).Value = TextBox1.Text;
                                    myCom.Parameters.Add("@MATKHAU", SqlDbType.NVarChar).Value = TextBox2.Text;

                                    myCom.ExecuteNonQuery();
                                }
                                Label1.Text = "ĐĂNG KÝ TÀI KHOẢN THÀNH CÔNG VUI LÒNG ĐĂNG NHẬP LẠI!!!";
                            }
                        }
                        else
                    {
                            Label1.Text = "Số điện thoại không đúng định dạng";
                        }

                    }
                    else
                    {
                        Label1.Text = "Mat khau khong trung";
                    }
                }
                else
                {
                    if (TextBox1.Text.Contains("@gmail.com"))
                    {
                        if(TextBox3.Text == TextBox2.Text)
                        {
                            //SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString);
                            myCon.Open();
                            string qry = "SELECT * FROM TAIKHOAN WHERE TENDANGNHAP='" + TextBox1.Text + "'";
                            SqlCommand cmd = new SqlCommand(qry, myCon);
                            SqlDataReader sdr = cmd.ExecuteReader();
                            if (sdr.Read())
                            {
                                Label1.Text = "TÊN ĐĂNG NHẬP BỊ TRÙNG, VUI LÒNG CHỌN TÊN KHÁC";
                            }
                            else
                            {
                                myCon = DBClass.OpenConn();
                                using (SqlCommand myCom = new SqlCommand("dbo.usp_InsNguoidung", myCon))
                                {
                                    myCom.CommandType = CommandType.StoredProcedure;
                                    myCom.Parameters.Add("@TENDANGNHAP", SqlDbType.NVarChar).Value = TextBox1.Text;
                                    myCom.Parameters.Add("@MATKHAU", SqlDbType.NVarChar).Value = TextBox2.Text;

                                    myCom.ExecuteNonQuery();
                                }
                                Label1.Text = "ĐĂNG KÝ TÀI KHOẢN THÀNH CÔNG VUI LÒNG ĐĂNG NHẬP LẠI!!!";
                            }
                        }
                        else
                        {
                            Label1.Text = "Mat khau khong trung";
                        }
                    }
                    else
                        {
                        Label1.Text = "Gmail không đúng định dạng";
                    }

                }
            }
            else
            {
                Label1.Text = "Khong duoc bo trong";
            }


        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("DANGNHAP.aspx");
        }
    }
}