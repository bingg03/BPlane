<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="signin_folder/main_signin.css">
   
</head>
<body>
    <div id="main">
        
        <div id="header">
            <li><a href="home">Home</a></li>
        </div>
        
        <div id="content">
            <div class="content-signin">
            	
                <div class="content-signin-title">
                    <h1 class="content-signin-title-text">Đăng Nhập</h1>
                </div>
                
                
				
                <form action="login">
                	<p class="wrong-email-pw">${message}</p>
                    <input class="signin-submit" name="useremail" type="text" placeholder="Email">
                    <div class="pw">
                       <input style="margin-bottom:20px ;" class="signin-submit" id="pass" name="password" type="password" placeholder="Mật khẩu">
                        <div id="eye">
                            <i class="far fa-eye" ></i> 
                        </div>                          
                    </div>              
                    <a class="login-forgotpw" href="">Quên Mật Khẩu</a>
                    <input class="signin-submit-button" type="submit" value="ĐĂNG NHẬP">
                </form>
                
                <p class="login-signup">Bạn chưa có tài khoản? <a href="register.jsp">Đăng kí</a></p>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
<script src="signin_folder/js_signin/app.js"></script>
</html>