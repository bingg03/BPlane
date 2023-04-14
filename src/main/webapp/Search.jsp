<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--Begin Search -->
    <div class="hero-wrap js-fullheight"
        style="background-image: url('images/hinh-anh-may-bay-dep.jpg'); max-height: 600px">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
                data-scrollax-parent="true">
                <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                    <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
                        <strong>Travel
                            <br></strong> your favourite destinations
                    </h1>

                    <div class="block-17 my-4">
                        <form action="search" method="get" class="d-block d-flex">
                            <div class="fields d-block d-flex">
                                <div class="textfield-search one-third">
                                    <input value="${depSearch}" name="dep_search" type="text" class="form-control" placeholder="Điểm đi">
                                </div>
                                <div class="textfield-search one-third">
                                    <input value="${desSearch}" name="des_search" type="text" class="form-control" placeholder="Điểm đến">
                                </div>
                            </div>
                            <input name="dfas" type="submit" class="search-submit btn btn-primary" value="Tìm kiếm">
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
	<!-- End Search -->
	
	
	