using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANTHUCAN_DANANG
{
    public partial class DANGNHAP : Page
    {
        // Sự kiện xử lý khi người dùng nhấn nút "Đăng nhập"
        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString);

            long result; // Dùng kiểu `long` để đảm bảo có thể chứa 10 chữ số

            if (usernameLogin != null && passwordLogin != null && !string.IsNullOrWhiteSpace(usernameLogin.Text) && !string.IsNullOrWhiteSpace(passwordLogin.Text))
            {
                if ((usernameLogin.Text).ToLower() == "admin")
                {
                    myCon.Open();
                    string qry = "SELECT * FROM TAIKHOAN WHERE TENDANGNHAP='" + usernameLogin.Text + "' AND MATKHAU='" + passwordLogin.Text + "'";
                    SqlCommand cmd = new SqlCommand(qry, myCon);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Session["username"] = usernameLogin.Text;
                        Response.Redirect("TRANGCHU.aspx");
                    }
                    else
                    {
                        statusLogin.Text = "UserId & Password Is not correct. Try again..!!";
                    }
                }
                else
                {
                    if (Int64.TryParse(usernameLogin.Text, out result))
                    {
                        if (usernameLogin.Text.Length == 10)
                        {
                            //Label1.Text = "dang kiem tra sdt";
                            myCon.Open();
                            string qry = "SELECT * FROM TAIKHOAN WHERE TENDANGNHAP='" + usernameLogin.Text + "' AND MATKHAU='" + passwordLogin.Text + "'";
                            SqlCommand cmd = new SqlCommand(qry, myCon);
                            SqlDataReader sdr = cmd.ExecuteReader();
                            if (sdr.Read())
                            {
                                Session["username"] = usernameLogin.Text;
                                Response.Redirect("TRANGCHU.aspx");
                            }
                            else
                            {
                                statusLogin.Text = "UserId & Password Is not correct. Try again..!!";
                            }
                        }
                        else
                        {
                            statusLogin.Text = "Số điện thoại không đúng định dạng";
                        }
                    }
                    else
                    {
                        if (usernameLogin.Text.Contains("@gmail.com"))
                        {
                            //Label1.Text = "dang kiem tra gmail";
                            myCon.Open();
                            string qry = "SELECT * FROM TAIKHOAN WHERE TENDANGNHAP='" + usernameLogin.Text + "' AND MATKHAU='" + passwordLogin.Text + "'";
                            SqlCommand cmd = new SqlCommand(qry, myCon);
                            SqlDataReader sdr = cmd.ExecuteReader();
                            if (sdr.Read())
                            {
                                Session["username"] = usernameLogin.Text;
                                Response.Redirect("TRANGCHU.aspx");
                            }
                            else
                            {
                                statusLogin.Text = "UserId & Password Is not correct. Try again..!!";
                            }
                        }
                        else
                        {
                            statusLogin.Text = "Gmail không đúng định dạng";
                        }

                    }
                }
            }
            else
            {
                statusLogin.Text = "Khong duoc bo trong";
            }
        }

        protected void Button_Click2(object sender, EventArgs e)
        {
            Response.Redirect("DANGKY.aspx");
        }
    }
}
