<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Info</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="manage_css/manager.css" rel="stylesheet" type="text/css" />
    <style>
        img {
            width: 200px;
            height: 120px;
        }
    </style>
    
    <style>
    	#header {
    		height: 46px;
    		background-color: #8a8a8aa0;
    		opacity: 80%;
    		top: 0;
    		left: 0;
    		right: 0;
    		z-index: 1;
		}
    	#header li{
    		position: relative;
    		list-style: none;
    		display: inline;
    		height: 100%;
    		line-height: 46px;
    		margin: 0 30px;
		}

		#header li a{
    		text-decoration: none;
    		color: #fff;
    		font-size: 17px;
		}
    </style>
    <link rel="stylesheet" href="css/infocus.css">
</head>
<body>
	<div id="header">
            <li><a href="home" style="text-decoration: none;"> Back </a></li>
    </div>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2 style="font-family: Arial, Helvetica, sans-serif;">Thông tin cá nhân: ID ${id} <b>(${uoa})</b></h2>
                    </div>
                    <div class="col-sm-6">
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    
    
    <div class="content">
        <div class="info-customer">
            <div class="left-info-customer">
                <div class="name-cus">
                    <p style="display: inline; font-family: Arial, Helvetica, sans-serif;">Họ và Tên:</p>
                    <input style="color : black; font-family: Arial, Helvetica, sans-serif;" 
                    type="text" value="${name}" disabled>
                </div>
                <div class="email-cus">
                    <p style="display: inline; font-family: Arial, Helvetica, sans-serif;">Email: </p>
                    <input style="color : black; font-family: Arial, Helvetica, sans-serif;" 
                    type="text" value="${email}" size="40" disabled>
                </div>
                <br>
                <div class="cmnd-cus">
                    <p style="display: inline; font-family: Arial, Helvetica, sans-serif;">CMND/CCCD: </p>
                    <input style="color : black; font-family: Arial, Helvetica, sans-serif;" 
                    type="text" value="${cccd}" size="15" disabled> 
                </div>
                <br>
            </div>
            <div class="right-info-customer">
                <div class="sex-cus">
                    <p style="display: inline; font-family: Arial, Helvetica, sans-serif;">Tuổi:</p>
                    <input style="color : black; font-family: Arial, Helvetica, sans-serif;" 
                    type="text" value="${age}" disabled>
                </div>
                <br>
                <div class="pw-cus">
                    <p style="display: inline; font-family: Arial, Helvetica, sans-serif;">Mật khẩu:</p>
                    <input style="color : black; font-family: Arial, Helvetica, sans-serif;" 
                    type="password" value="${pass}" disabled>
                </div>
            </div>
        </div>
        <br>  
        <br>
        <br>
        
        
            
            <div class="button-info-cus">   	
            	
            	<a style="text-decoration: none; display: flex; justify-content: center; 
            	align-items: center;" class="ticcc" href="Home.jsp">
  					<p style="margin: 0; font-size: 15px; font-family: Arial, Helvetica, sans-serif;">Vé đã mua</p>
				</a>
            	
            	<a style="text-decoration: none; display: flex; justify-content: center; 
            	align-items: center;" class="kettt" href="Home.jsp">
  					<p style="margin: 0; font-size: 15px; font-family: Arial, Helvetica, sans-serif;">Lịch sử mua vé</p>
				</a>
            	
           		<a style="text-decoration: none; display: flex; justify-content: center; 
           		align-items: center;" class="change-info" href="changeinfo">
  					<p style="margin: 0; font-size: 15px; font-family: Arial, Helvetica, sans-serif;">Thay đổi thông tin</p>
				</a>
				
				<a style="text-decoration: none; display: flex; justify-content: center; 
				align-items: center;" class="change-pw" href="gotochangepass">
  					<p style="margin: 0; font-size: 15px; font-family: Arial, Helvetica, sans-serif;">Thay đổi mật khẩu</p>
				</a>
				
            </div> 
        </div>  
    <script src="js/manager.js" type="text/javascript"></script>
    <script>

    </script>
</body>

</html>