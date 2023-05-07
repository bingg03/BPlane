<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="register_folder/register.css">
</head>
<body>
    <div id="main">
    	<div id="header">
            <li><a href="home">Home</a></li>
        </div>
        <div id="content">
            <div class="content-signin">
                <div class="content-signin-title">
                    <h1 class="content-signin-title-text">Đăng Ký</h1>
                </div>
                
                
                <form action="register" method="post">
                	<p class="wrong-email-pw">${message}</p>
                    <input style="margin-top: 40px;" value="${email}" class="signin-submit" name="email" type="text" placeholder="Email">
                    <!-- <input class="signin-submit" name="text" type="tel" placeholder="Số điện thoại">     -->
                    <input value="${name}" class="signin-submit" name="Name" type="text" placeholder="Họ và Tên">
                     
                    
                    <input value="${cccd}" class="signin-submit" name="cccd" type="text" placeholder="CMND/CCCD">
                    <input value="${age}" class="signin-submit" name="age" type="number" min="1" max="100" placeholder="Tuổi">  
                                
                    <input value="${pass}" class="signin-submit" name="password" type="password" placeholder="Mật khẩu">
                    <input value="${repass}" class="signin-submit" name="repassword" type="password" placeholder="Nhập lại Mật khẩu">
                    <input class="signin-submit-button" type="submit" value="ĐĂNG KÝ">
                </form>
                <p class="login-signup">Quay trở lại <a href="login.jsp">Đăng Nhập</a></p>
            </div>
        </div>
    </div>
</body>
</html>