<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Manage Tickets</title>
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

<body>
	<div id="header">
    	<a href="home" style="text-decoration: none;">Home</a>
    </div>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Ticket</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i
                                class="material-icons">&#xE147;</i> <span>Add New Ticket</span></a>
                        <!-- <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i
                                class="material-icons">&#xE15C;</i> <span>Delete</span></a> -->
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <!-- <th>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="selectAll">
                                <label for="selectAll"></label>
                            </span>
                        </th> -->
                        <th>ID</th>
                        <th>Image</th>
                        <th>Dep/Des</th>
                        <th>TimeDep/TimeDes</th>
                        <th>Price</th>
                        <th>Quanlity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listFlight}" var="o">
                        <tr>
                            <!-- <td>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                    <label for="checkbox1"></label>
                                </span>
                            </td> -->
                            <td>${o.id}</td>
                            <td>
                                <img src="${o.image}">
                            </td>
                            <td>${o.dep} - ${o.des}</td>
                            <td>${o.timedep} <br> ${o.timedes}</td>
                            <td>${o.cost} VND</td>
                            <td>${o.numT}</td>
                            <td>
                                <a href="editticket?fid=${o.id}" class="edit" data-toggle="modal"><i class="material-icons"
                                        data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href="deleteticket?fid=${o.id}" class="delete" data-toggle="modal" 
                                onclick="return confirm('Are you sure you want to delete this Ticket?')"><i
                                        class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                            </td>
                        </tr>
                    </c:forEach>
                    
                    
                </tbody>
            </table>
            <!-- <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div> -->
        </div>
    </div>
    <!-- Edit Modal HTML -->
    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="addticket" method="post">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Ticket</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <label>Image URL</label>
                            <input name="image" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Điểm đi</label>
                            <input name="dep" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Điểm đến</label>
                            <input name="des" type="text" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>Thời gian đi</label>
                            <input name="timedep" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Thời gian đến</label>
                            <input name="timedes" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Giá</label>
                            <input name="price" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Số lượng</label>
                            <input name="quanlity" type="text" class="form-control" required>
                        </div>

                        <!-- <div class="form-group">
                            <label>Category</label>
                            <select name="category" class="form-select" aria-label="Default select example">
                                <c:forEach items="${listC}" var="o">
                                    <option value="${o.id}">${o.name}</option>
                                </c:forEach>
                            </select>
                        </div> -->

                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-success" value="Add">
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <!-- Delete Modal HTML -->
    <div id="deleteEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h4 class="modal-title">Delete Ticket</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure you want to delete these Ticket?</p>
                        <p class="text-warning"><small>This action cannot be undone.</small></p>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-danger" value="Delete">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="js/manager.js" type="text/javascript"></script>
    
</body>

</html>