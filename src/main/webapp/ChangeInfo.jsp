<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Change Information</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/manager.css" rel="stylesheet" type="text/css" />
    <style>
        img {
            width: 200px;
            height: 120px;
        }
    </style>

<body>
	<div id="header">
            <a href="info" style="text-decoration: none;">Back</a>
    </div>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Change <b>Information</b></h2>
                    </div>
                    <div class="col-sm-6">
                    </div>
                </div>
            </div>
        </div>
        
        <div id="editEmployeeModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="afterchangeinfo" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">${uoa}</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                        
                        	<div class="form-group">
                                <label>ID</label>
                                <input value="${id}" name="id" type="text" class="form-control" readonly required>
                            </div>
                            <div class="form-group">
                                <label>Họ và tên</label>
                                <input value="${name}" name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input value="${email}" name="email" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>CMND/CMND</label>
                                <input value="${cccd}" name="cccd" type="text" class="form-control" required>
                            </div>
                            
                            <div class="form-group">
                                <label>Tuổi</label>
                                <input value="${age}" name="age" type="number" min="1" max="100" class="form-control" required>
                            </div>
                            
                        </div>
                        <div class="modal-footer">
                            <!-- <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel"> -->
                            <input type="submit" class="btn btn-success" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>



    <script src="js/manager.js" type="text/javascript"></script>
    <script>

    </script>
</body>

</html>