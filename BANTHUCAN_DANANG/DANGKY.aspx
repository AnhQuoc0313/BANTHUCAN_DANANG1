<%@ Page Title="" Language="C#" MasterPageFile="~/TRANGME.Master" AutoEventWireup="true" CodeBehind="DANGKY.aspx.cs" Inherits="BANTHUCAN_DANANG.DANGKY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <link rel="stylesheet" href="CSS/DangNhap.css" /><!-- Liên kết đến file CSS -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <div class="modal fade login mt-5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="cart_box" style="width: 100%;margin: auto;">
                        <div class="login_img_box float-left" style="width: 50%;height: 450px;background: pink;">
                            <img src="IMAGE/img_login.jpg" width="100%" height="450px" />
                        </div>

                        <div id="login_box">
                            <div class="login_info_box float-right p-5" style="width: 100%;height: 450px;">
                                <p class="text-center font-weight-bold" style="font-size: 140%">Đăng ký</p>
                                <label class="font-weight-bold mt-3">Điền email hoặc số điện thoại để đăng ký</label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" aria-describedby="emailHelp" Placeholder="Nhập email hoặc số điện thoại" style="outline: none;"></asp:TextBox>
                            
                                <label class="mt-3 font-weight-bold">Mật khẩu</label>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control" aria-describedby="emailHelp" Placeholder="Nhập mật khẩu" style="outline: none;"></asp:TextBox>
                                <label class="mt-3 font-weight-bold">Nhập lại mật khẩu</label>
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="form-control" aria-describedby="emailHelp" Placeholder="Nhập mật khẩu" style="outline: none;"></asp:TextBox>

                                <asp:Button ID="LoginButton" runat="server" Text="Đăng ký" CssClass="btn btn-primary mt-4" OnClick="Button1_Click" style="width: 100%;background: #fb9200;border: 0;outline: none;" />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <p id="statusLogin" class="text-center mt-4" style="font-size: 90%;color: red;"></p>
<%--                                <p onclick="move_signup()" class="text-center mt-3" style="font-size: 90%">Bạn chưa có tài khoản, Đăng ký<strong style="color:#fb9200 "> tại đây</strong></p>--%>
                                    <%-- <asp:LinkButton ID="LinkButtonRegister" runat="server" Text="Đăng Nhập" OnClick="Button1_Click2" CssClass="text-center mt-3" style="font-size: 90%; color: #fb9200; background: none; border: none; cursor: pointer;" />--%>
                                <p style="font-size: 90%">Bạn đã có tài khoản? 
                                <asp:LinkButton ID="LinkButtonRegister" runat="server" Text="Đăng nhập tại đây" 
                                OnClick="Button1_Click2" 
                                   CssClass="text-center mt-3" 
                                    style="font-size: 90%; color: #fb9200; background: none; border: none; cursor: pointer;" />
                                </p>

                            </div>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
