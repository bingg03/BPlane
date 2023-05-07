<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thay đổi mật khẩu</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="signin_folder/main_signin.css">
   
</head>
<body>
    <div id="main">
        <div id="header">
            <li><a href="info">Back</a></li>
        </div>
        
        <div id="content">
            <div class="content-signin">
            	
                <div class="content-signin-title">
                    <h1 class="content-signin-title-text">Đổi mật khẩu</h1>
                </div>
                
                
				
                <form action="changepass" method="post">
                	<p style="display: flex; align-items: center;" class="wrong-email-pw">${message}</p>
                    
                    <div class="oldpass" style="display: flex; align-items: center;">
                        <p style="font-weight: bold; font-size: 20px; margin-top: 40px; display: inline-block">Mật khẩu cũ</p>
                        <input value="${oldpass}" style="display: inline-block; margin-left: 30px; width: 240px;" 
                        class="signin-submit" name="oldpass" type="text" readonly>
                    </div>


                    <div class="pw">
                       <input value="${pass}" style="margin-bottom:5px ;" class="signin-submit" id="pass" name="pass" 
                       type="text" placeholder="Mật khẩu mới">
                                                 
                    </div>   
                    
                    <div class="pw">
                        <input value="${repass}" style="margin-bottom:15px ;" class="signin-submit" id="pass" name="repass" 
                        type="text" placeholder="Nhập lại mật khẩu">
                                                 
                     </div> 
                    <input style="margin-bottom: 20px;" class="signin-submit-button" type="submit" value="CẬP NHẬT">
                </form>
                
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
<script src="signin_folder/js_signin/app.js"></script>
</html>