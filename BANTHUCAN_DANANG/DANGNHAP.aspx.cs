using System;
using System.Web.UI;

namespace BANTHUCAN_DANANG
{
    public partial class DANGNHAP : Page
    {
        // Sự kiện xử lý khi người dùng nhấn nút "Đăng nhập"
        protected void Login_Click(object sender, EventArgs e)
        {
            string username = usernameLogin.Text;
            string password = passwordLogin.Text;

            // Kiểm tra điều kiện đăng nhập (ví dụ: so sánh với cơ sở dữ liệu)
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                statusLogin.Text = "Vui lòng điền đầy đủ thông tin.";
            }
            else
            {
                // Giả sử kiểm tra trong cơ sở dữ liệu (có thể thay bằng gọi API hoặc truy vấn DB)
                if (username == "admin" && password == "123456") // Chỉ là ví dụ, cần thay bằng kiểm tra từ DB
                {
                    statusLogin.Text = "Đăng nhập thành công!";
                    statusLogin.ForeColor = System.Drawing.Color.Green;
                    // Thực hiện các hành động khác sau khi đăng nhập thành công
                }
                else
                {
                    statusLogin.Text = "Tên đăng nhập hoặc mật khẩu không đúng.";
                    statusLogin.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        // Sự kiện xử lý khi người dùng nhấn nút "Đăng ký"
        protected void Signup_Click(object sender, EventArgs e)
        {
            string username = usernameSignup.Text;
            string password = passwordSignup.Text;
            string repassword = repasswordSignup.Text;

            // Kiểm tra các điều kiện đăng ký
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(repassword))
            {
                statusSignup.Text = "Vui lòng điền đầy đủ thông tin.";
            }
            else if (password != repassword)
            {
                statusSignup.Text = "Mật khẩu không khớp.";
            }
            else
            {
                // Giả sử thêm người dùng mới vào cơ sở dữ liệu (cần thay bằng logic thực)
                statusSignup.Text = "Đăng ký thành công!";
                statusSignup.ForeColor = System.Drawing.Color.Green;
                // Có thể thêm logic điều hướng sau khi đăng ký thành công
            }
        }
    }
}
