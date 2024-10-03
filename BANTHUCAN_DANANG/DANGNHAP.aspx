<%@ Page Title="" Language="C#" MasterPageFile="~/TRANGME.Master" AutoEventWireup="true" CodeBehind="DANGNHAP.aspx.cs" Inherits="BANTHUCAN_DANANG.DANGNHAP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/DangNhap.css" rel="stylesheet" />

<div class="modal fade login mt-5 " tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content ">
              <div class="cart_box" style="width: 100%;margin: auto;">  
          <div class="login_img_box float-left" style="width: 50%;height: 450px;background: pink;">
        <img src="IMAGE/img_login.jpg" width="100%" height="450px">
      </div>
  
      <!-- Giao diện đăng nhập -->
      <div id="login_box" >
          <div class="login_info_box float-right p-5" style="width: 100%;height: 450px;">
      <p class="text-center font-weight-bold" style="font-size: 140%">Đăng nhập</p> 
      <label class="font-weight-bold mt-3">Điền email hoặc số điện thoại để đăng nhập</label> 
      <asp:TextBox ID="usernameLogin" runat="server" CssClass="form-control" Placeholder="Nhập email hoặc số điện thoại"></asp:TextBox>
      <label class="mt-3 font-weight-bold">Mật khẩu</label> 
      <asp:TextBox ID="passwordLogin" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Nhập mật khẩu"></asp:TextBox>
      <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" CssClass="btn btn-primary mt-4" OnClick="Login_Click" style="width: 100%;background: #fb9200;border: 0;outline: none;" />
      <asp:Label ID="statusLogin" runat="server" CssClass="text-center mt-4" ForeColor="Red"></asp:Label>
      <%--<asp:LinkButton ID="LinkButtonRegister" runat="server" Text="Đăng ký" OnClick="Button_Click2" CssClass="text-center mt-3" style="font-size: 90%; color: #fb9200; background: none; border: none; cursor: pointer;" />--%>
              <p style="font-size: 90%">Bạn chưa có tài khoản? 
    <asp:LinkButton ID="LinkButtonRegister" runat="server" Text="Đăng ký tại đây" 
                    OnClick="Button_Click2" 
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
</asp:Content>
