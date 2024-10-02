<%@ Page Title="" Language="C#" MasterPageFile="~/TRANGME.Master" AutoEventWireup="true" CodeBehind="DANGNHAP.aspx.cs" Inherits="BANTHUCAN_DANANG.DANGNHAP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/DangNhap.css" rel="stylesheet" />
   <script>
       function move_signup() {
           document.getElementById('login_box').style.display = 'none';
           document.getElementById('signup_box').style.display = 'block';
       }

       function move_login() {
           document.getElementById('signup_box').style.display = 'none';
           document.getElementById('login_box').style.display = 'block';
       }
   </script>

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
      <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" CssClass="btn btn-primary mt-4" OnClick="Login_Click" />
      <asp:Label ID="statusLogin" runat="server" CssClass="text-center mt-4" ForeColor="Red"></asp:Label>
      <p onclick="move_signup()" class="text-center mt-3" style="font-size: 90%">Bạn chưa có tài khoản, Đăng ký<strong style="color:#fb9200 "> tại đây</strong> </p>
      </div>
      </div>
  
      <!-- Giao diện đăng ký -->
      <div id="signup_box" style="display: none;">
      <div class="signup_info_box float-right p-4 pl-5 pr-5" style="width: 100%;height: 450px;">
      <p class="text-center font-weight-bold" style="font-size: 140%">Đăng ký</p> 
      <label class="font-weight-bold mt-1">Tên đăng nhập Email hoặc số điện thoại</label> 
      <asp:TextBox ID="usernameSignup" runat="server" CssClass="form-control" Placeholder="Nhập email hoặc số điện thoại"></asp:TextBox>
      <label class="mt-3 font-weight-bold">Mật khẩu</label> 
      <asp:TextBox ID="passwordSignup" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Nhập mật khẩu"></asp:TextBox>
      <label class="mt-3 font-weight-bold">Nhập lại mật khẩu</label> 
      <asp:TextBox ID="repasswordSignup" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Nhập lại mật khẩu"></asp:TextBox>
      <asp:Button ID="btnSignup" runat="server" Text="Đăng ký" CssClass="btn btn-primary mt-4" OnClick="Signup_Click" />
      <asp:Label ID="statusSignup" runat="server" CssClass="text-center mt-3 mb-1" ForeColor="Red"></asp:Label>
      <p onclick="move_login()" class="text-center mt-0" style="font-size: 90%">Bạn đã có tài khoản, Đăng nhập<strong  style="color:#fb9200 "> tại đây</strong> </p>
      </div>
      </div>
      <div style="clear: both;"></div>
    </div>
      </div>
    </div>
  </div>
</asp:Content>
