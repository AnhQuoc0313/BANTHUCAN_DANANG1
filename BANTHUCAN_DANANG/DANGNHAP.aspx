<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập & Đăng Ký</title>
    <link rel="stylesheet" href="CSS/DangNhap.css"> <!-- Liên kết đến file CSS -->
</head>
<body>
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
      
          <div id="login_box" >
              <div class="login_info_box float-right p-5" style="width: 100%;height: 450px;">
          <p class="text-center font-weight-bold" style="font-size: 140%">Đăng nhập</p> 
          <label class="font-weight-bold mt-3">Điền email hoặc số điện thoại để đăng nhập</label> 
          <input id="usernameLogin" type="text" class="form-control" aria-describedby="emailHelp" placeholder="Nhập email hoặc số điện thoại " style="outline: none;">
          <label class="mt-3 font-weight-bold">Mật khẩu</label> 
          <input id="passwordLogin" type="password" class="form-control" aria-describedby="emailHelp" placeholder="Nhập mật khẩu">
          <button onclick="Login()" class="btn btn-primary mt-4" style="width: 100%;background: #fb9200;border: 0;outline: none;">Đăng nhập</button>
          <p id="statusLogin" class="text-center mt-4" style="font-size: 90%;color: red;"></p>
          <p onclick="move_signup()" class="text-center mt-3" style="font-size: 90%">Bạn chưa có tài khoản, Đăng ký<strong style="color:#fb9200 "> tại đây</strong> </p>
          </div>
          </div>
      
          <div id="signup_box" style="display: none;">
          <div class="signup_info_box float-right p-4 pl-5 pr-5" style="width: 100%;height: 450px;">
          <p class="text-center font-weight-bold" style="font-size: 140%">Đăng ký</p> 
          <label class="font-weight-bold mt-1">Tên đăng nhập Email hoặc số điện thoại</label> 
          <input id="usernameSignup" type="email" class="form-control" aria-describedby="emailHelp" placeholder="Nhập email hoặc số điện điện thoại" style="outline: none;">
          <label class="mt-3 font-weight-bold">Mật khẩu</label> 
          <input id="passwordSignup" type="password" class="form-control" aria-describedby="emailHelp" placeholder="Nhập mật khẩu">
          <label class="mt-3 font-weight-bold">Nhập lại mật khẩu</label> 
          <input id="RepasswordSignup" type="password" class="form-control" aria-describedby="emailHelp" placeholder="Nhập lại mật khẩu">
          <button onclick="Signup()" class="btn btn-primary mt-4" style="width: 100%;background: #fb9200;border: 0;outline: none;">
          Đăng ký</button>
          <p id="statusSignup" class="text-center mt-3 mb-1" style="font-size: 90%;color: red;"></p>
          <p onclick="move_login()" class="text-center mt-0" style="font-size: 90%">Bạn đã có tài khoản, Đăng nhập<strong  style="color:#fb9200 "> tại đây</strong> </p>
          </div>
          </div>
          <div style="clear: both;"></div>
        </div>
          </div>
        </div>
      </div>
</body>
</html>