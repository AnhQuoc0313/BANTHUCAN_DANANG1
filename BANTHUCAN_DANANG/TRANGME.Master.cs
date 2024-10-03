using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANTHUCAN_DANANG
{
    public partial class TRANGCHU : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(Session["username"] == null)
            {
                Dangxuat.Visible = false;
                Dangnhap.Visible = true;
            }

            if (!IsPostBack)
            {

                string user = (string)Session["username"];
                if (user != null && !string.IsNullOrWhiteSpace(user))
                {
                    User.Text = user;
                    Dangxuat.Visible = true;
                    Dangnhap.Visible = false;
                }
            }

            LisLoai.TypeName = "BANTHUCAN_DANANG.DBClass";
            LisLoai.SelectMethod = "GetData";

            Parameter parameter = new Parameter
            {
                Name = "sql",
                DefaultValue = "SELECT * FROM [DANHMUC]"
            };
            LisLoai.SelectParameters.Clear();
            LisLoai.SelectParameters.Add(parameter);

            LisSP.TypeName = "BANTHUCAN_DANANG.DBClass";
            LisSP.SelectMethod = "GetData";

            Parameter parameter2 = new Parameter
            {
                Name = "sql",
                DefaultValue = "SELECT [IMG], [TENSP], [MOTASP], [GIASP] FROM [SANPHAM]"
            };
            LisSP.SelectParameters.Clear();
            LisSP.SelectParameters.Add(parameter2);
        }
        protected void buttondatngaybayh_click(object sender, EventArgs e)
        {
            //Response.Redirect("TRANGCHU.aspx");
            
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String masp =null;
            if (ListBox1.SelectedIndex > -1)
            {
                Label3.Text = "Co clcik ";
                masp = Convert.ToString(ListBox1.SelectedItem.Value);

                if (masp == null)
                {
                    masp = Request.QueryString["id"].ToString();
                }

                //int madm = Convert.ToInt32(masp);

                

                LisSP.TypeName = "BANTHUCAN_DANANG.DBClass";
                LisSP.SelectMethod = "GetData";

                Parameter parameter3 = new Parameter
                {
                    Name = "sql",
                    DefaultValue = "SELECT [IMG], [TENSP], [MOTASP], [GIASP] FROM [SANPHAM] WHERE IDDM = '" + masp + "'"
                };
                LisSP.SelectParameters.Clear();
                LisSP.SelectParameters.Add(parameter3);
                ListView1.DataBind();


            }
            masp = null;
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "xem")
            {
                string masp = Convert.ToString(e.CommandArgument);

                Response.Redirect("XEMTHEM.aspx?id=" + masp);
            }
        }

        protected void Dangnhap_Click(object sender, EventArgs e)
        {
            Response.Redirect("DANGNHAP.aspx");
        }

        protected void Dangxuat_Click(object sender, EventArgs e)
        {
            Dangxuat.Visible = false;
            Dangnhap.Visible = true;
            Session["username"] = null;
            Response.Redirect("TRANGCHU.aspx");
        }
    } 
}