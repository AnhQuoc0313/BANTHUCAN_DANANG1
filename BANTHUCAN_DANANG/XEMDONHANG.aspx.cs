using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANTHUCAN_DANANG
{
    public partial class XEMDONHANG : System.Web.UI.Page
    {
        int IDDH;
        String TTDH = "ĐÃ NHẬN";
        SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            DoGridView();
        }
        private void DoGridView()
        {
            try
            {
                myCon.Open();
                string user = (string)Session["username"];
                String TENDANGNHAP = "";
                if (user != null)
                {
                    TENDANGNHAP = user;
                }
                using (SqlCommand myCom = new SqlCommand("dbo.usp_GetDONHANG", myCon))
                {
                    myCom.Parameters.Add("@TENDANGNHAP", sqlDbType: SqlDbType.VarChar).Value = TENDANGNHAP;
                    myCom.Connection = myCon;
                    myCom.CommandType = CommandType.StoredProcedure;

                    SqlDataReader myDr = myCom.ExecuteReader();

                    listDonhangs.DataSource = myDr;
                    listDonhangs.DataBind();

                    myDr.Close();
                }
            }
            catch (Exception ex) { }
            finally { myCon.Close(); }
        }

        protected void lbDelDonhang_RowDeleting(Object sender, GridViewDeleteEventArgs e)
        {
            //IDDH = Convert.ToInt32(listDonhangs.DataKeys[e.RowIndex].Value.ToString());

            //try
            //{
            //    myCon.Open();
            //    //myCon = DBClass.OpenConn();
            //    using (SqlCommand cmd = new SqlCommand("dbo.PROC_XOADONHANG", myCon))
            //    {
            //        cmd.CommandType = CommandType.StoredProcedure;
            //        cmd.Parameters.Add("@IDDH", SqlDbType.Int).Value = IDDH;
            //        cmd.ExecuteScalar();
            //    }
            //}
            //catch (Exception ex) { }
            //finally { myCon.Close(); }
            ////DoGridView();

            //try
            //{

            //    myCon.Open();
            //    string qry2 = "SELECT * FROM DONHANG WHERE IDDH = '" + IDDH + "'";
            //    using (SqlCommand cmd = new SqlCommand(qry2, myCon))
            //    {
            //        SqlDataReader sdr = cmd.ExecuteReader();

            //        if (sdr.Read())
            //        {
            //            Label1.Text = "ĐƠN HÀNG ĐANG VẬN CHUYỂN HOẶC ĐÃ NHẬN KHÔNG THỂ HỦY";
            //        }
            //        else
            //        {
            //            Label1.Text = "HỦY ĐƠN HÀNG THÀNH CÔNG";
            //        }
            //    }
            //}
            //catch (Exception ex) { }
            //finally { myCon.Close(); }
            //DoGridView();
        }

        protected void lbXacnhanDonhang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "XacnhanDonhang")
            {
                IDDH = Convert.ToInt32(e.CommandArgument);

            }

            try
            {
                myCon.Open();
                //myCon = DBClass.OpenConn();
                using (SqlCommand cmd = new SqlCommand("dbo.PROC_XACNHANDONHANG", myCon))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@IDDH", SqlDbType.Int).Value = IDDH;
                    cmd.ExecuteScalar();
                }
            }
            catch (Exception ex) { }
            finally { myCon.Close(); }
            //DoGridView();

            try
            {

                myCon.Open();
                string qry2 = "SELECT * FROM DONHANG WHERE IDDH = '" + IDDH + "' AND TRANGTHAIDH = N'" + TTDH + "'";
                using (SqlCommand cmd = new SqlCommand(qry2, myCon))
                {
                    SqlDataReader sdr = cmd.ExecuteReader();

                    if (sdr.Read())
                    {
                        Label1.Text = "CẢM ƠN BẠN ĐÃ MUA HÀNG";
                    }
                    else
                    {
                        Label1.Text = "ĐƠN HÀNG CHƯA ĐƯỢC GIAO KHÔNG THỂ XÁC NHẬN";
                    }
                }
            }
            catch (Exception ex) { }
            finally { myCon.Close(); }
            DoGridView();
        }
    }
}