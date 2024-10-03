using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace BANTHUCAN_DANANG
{
    public partial class GIOHANG : System.Web.UI.Page
    {
        SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtNgay.Text = DateTime.Now.ToString("yyyy-MM-dd");
                Tinhtong();
                GridView1.DataSource = DBClass.tbGioHang;
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowDeleting(Object sender, GridViewDeleteEventArgs e)
        {
            //SP_ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            DBClass.tbGioHang.Rows[e.RowIndex].Delete();
            Tinhtong();
            GridView1.DataSource = DBClass.tbGioHang;
            GridView1.DataBind();
        }

        protected void btnDathang_Click(object sender, EventArgs e)
        {

            int productID = Convert.ToInt32(Session["ProductID"]);
            string user = (string)Session["username"];
            if (string.IsNullOrEmpty(user) == true)
            {
                Response.Redirect("DANGNHAP.aspx");
            }
            else
            {
                try
                {
                    foreach (DataRow row in DBClass.tbGioHang.Rows)
                    {
                        myCon = DBClass.OpenConn();
                        using (SqlCommand myCom = new SqlCommand("dbo.usp_InsDonhang", myCon))
                        {
                            myCom.CommandType = CommandType.StoredProcedure;
                            myCom.Parameters.Add("@TENDANGNHAP", SqlDbType.VarChar).Value = user;
                            myCom.Parameters.Add("@SOLUONGDH", SqlDbType.Int).Value = Convert.ToInt32(row["SoLuong"]);
                            myCom.Parameters.Add("@TONGTIENDH", SqlDbType.Decimal).Value = (Convert.ToDecimal(row["Gia"])) * (Convert.ToInt32(row["SoLuong"]));
                            myCom.Parameters.Add("@TRANGTHAIDH", SqlDbType.NVarChar).Value = "ĐANG CHUẨN BỊ HÀNG";
                            myCom.Parameters.Add("@NGAY", SqlDbType.NVarChar).Value = txtNgay.Text.ToString();
                            myCom.Parameters.Add("@IDSP", SqlDbType.Int).Value = Convert.ToInt32(row["idSP"]); ;


                            myCom.ExecuteNonQuery();
                        }
                        /*// Lấy dữ liệu từ các cột của hàng hiện tại
                        int idSP = Convert.ToInt32(row["idSP"]);
                        string strTenSP = Convert.ToString(row["TenSanPham"]);
                        decimal gia = Convert.ToDecimal(row["Gia"]);
                        int soLuong = Convert.ToInt32(row["SoLuong"]);

                        // Sử dụng dữ liệu lấy được ở đây */
                    }
                    DBClass.tbGioHang.Rows.Clear();
                }
                catch (Exception ex) { }
                finally { myCon.Close(); }
                Response.Redirect("DONHANG.aspx");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ĐẶT HÀNG THÀNH CÔNG, HẪY THEO DÕI TRẠNG THÁI ĐƠN HÀNG')", true);
            }
        }
        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("TRANGCHU.aspx");
        }
        private void Tinhtong()
        {
            decimal tien = 0;
            foreach (DataRow row in DBClass.tbGioHang.Rows)
            {
                tien += (decimal)row["TongTien"];
            }
            Tongtien.Text = "Tổng cộng: " + tien.ToString("### ### ###");
        }
    }
}