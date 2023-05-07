<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanh toán</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="cart.css">



        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <style>
            .btnSub,
            .btnAdd {
                display: inline-block;
                width: 30px;
                height: 30px;
                padding: 0;
                margin: 0;
                font-size: 14px;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 4px;
                background-color: #fff;
                cursor: pointer;
            }

            .btnSub:hover,
            .btnAdd:hover {
                background-color: #f0f0f0;
            }

            input[type=number] {
                display: inline-block;
                width: 50px;
                height: 30px;
                margin: 0 5px;
                padding: 0;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 14px;
            }

            input[type=number]:focus {
                outline: none;
                border-color: #66afe9;
                box-shadow: 0 0 5px #66afe9;
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

            #header li {
                position: relative;
                list-style: none;
                display: inline;
                height: 100%;
                line-height: 46px;
                margin: 0 30px;
            }

            #header li a {
                text-decoration: none;
                color: #fff;
                font-size: 17px;
            }
        </style>



    </head>

    <body>
        <div id="header">
            <li><a href="home" style="text-decoration: none;"> Back </a></li>
        </div>

        <div class="shopping-cart">
            <div class="px-4 px-lg-0">

                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <!-- Shopping cart table -->
                                <div style="font-size: 15px;" class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">id</div>
                                                </th>

                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">vé máy bay</div>
                                                </th>

                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">thời gian đi/đến</div>
                                                </th>

                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Đơn Giá (VNĐ)</div>
                                                </th>

                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Vé Còn lại</div>
                                                </th>

                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Số Lượng đặt</div>
                                                </th>
                                                <!-- <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">Xóa</div>
                                            </th> -->
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr>
                                                <td class="align-middle"><strong
                                                        style="padding-left: 20px;">${fl.id}</strong></td>
                                                <th scope="row">
                                                    <div class="p-2">
                                                        <img name="image" style="width: 100px; height: 80px;"
                                                            src="${fl.image}" alt="" width="70"
                                                            class="img-fluid rounded shadow-sm">
                                                        <div class="ml-3 d-inline-block align-middle">
                                                            <h5 style="font-weight: bold; font-size: 20px;"
                                                                class="mb-0"> <a
                                                                    class="text-dark d-inline-block">${fl.dep} -
                                                                    <br>
                                                                    <p style="color: red;">${fl.des}</p>
                                                                </a></h5>
                                                            <span
                                                                class="text-muted font-weight-normal font-italic"></span>
                                                        </div>
                                                    </div>
                                                </th>
                                                <td style="font-size: 15px; padding-left: 20px;" class="align-middle">
                                                    <strong>${fl.timedep} <br>
                                                        ${fl.timedes} </strong>
                                                </td>
                                                <td style="padding-left: 30px;" class="align-middle"><strong
                                                        id="priceItem">1000000</strong></td>

                                                <td style="padding-left: 40px;" class="align-middle">
                                                    <strong>10</strong>
                                                </td>
                                                <td class="align-middle">

                                                    <button style="font-weight: bold;" class="btnSub"
                                                        onclick="this.parentNode.querySelector('input[type=number]').stepDown(); calculateTotal()">
                                                        <i class="fas fa-minus"></i>
                                                        -</button>

                                                    <input name="quanlityduc"
                                                        style="padding-left: 10px; font-size: 15px; font-weight: bold; appearance: none;"
                                                        id="form1" min="1" max="10" value="1" type="number"
                                                        class="form-control form-control-sm" onchange="calculateTotal()"
                                                        onblur="checkInputRange()" />

                                                    <button style="font-weight: bold;" class="btnAdd"
                                                        onclick="this.parentNode.querySelector('input[type=number]').stepUp(); calculateTotal()">
                                                        <i class="fas fa-plus"></i>
                                                        +</button>
                                                </td>

                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher
                                </div>
                                <div class="p-4">
                                    <div class="input-group mb-4 border rounded-pill p-2"
                                        style="display: flex; flex-direction: row;">
                                        <input id="voucherInput" type="text" placeholder="Nhập Voucher"
                                            aria-describedby="button-addon3" class="form-control border-0"
                                            style="flex: 1;">
                                        <div class="input-group-append border-0">
                                            <button style="float: right; color: #fff;
                                            background-color: #000; 
                                            border-color: #000;" onclick="calculateTotal()" id="voucherButton"
                                                type="button" class="btn btn-primary"><i class="fa fa-gift mr-2"></i>Sử
                                                dụng</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền
                                </div>
                                <div style="text-align: right;" class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong
                                                class="text-muted">Tổng tiền hàng</strong><strong
                                                id="totalPrice">${fl.cost} VNĐ</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong
                                                class="text-muted">Voucher Giảm giá</strong><strong id="voucherValue">0
                                                VNĐ</strong>
                                        </li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong
                                                class="text-muted">Tổng thanh toán</strong>
                                            <h5 name="total" style="font-size: 20px; color: red;"
                                                class="font-weight-bold" id="totalAmount">500</h5>
                                        </li>
                                    </ul>
                                    <!-- <a href="" class="btn btn-dark rounded-pill py-2 btn-block" >Mua vé</a> -->
                                    <button onclick="checkout()" style="float: right; color: #fff;
                                background-color: #000; 
                                border-color: #000;" type="button" class="btn btn-primary" data-toggle="modal"
                                        id="open-modal-button">
                                        Mua Vé
                                    </button>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <script>
            function checkout() {
            	const quanlity = document.getElementById('form1').value;
                const totalAmount = document.getElementById('totalAmount').textContent;
                
                
                //event.preventDefault();
                //window.location.href = 'https://www.youtube.com/';
                window.location.href = 'QRCode.html?fid=' + 1 + '&quanlity=' + quanlity;
                // Redirect sang giao diện 2 và truyền giá trị của input trên URL
                //window.location.href = 'checkout?fid=' + 1 + '&totalA=' + encodeURIComponent(totalAmount) + '&amountT=' + 111;
            }
        </script>

        <script>
            // Get the open modal button element
            var openModalButton = document.getElementById('open-modal-button');

            // Add a click event listener to the open modal button
            openModalButton.addEventListener('click', function () {
                // Wait for 5 seconds
                setTimeout(function () {
                    // Get the QR code container element
                    var qrCodeContainer = document.getElementById('qr-code-container');

                    // Create the success message element
                    var successMessage = document.createElement('div');
                    successMessage.innerText = 'Bạn đã thanh toán thành công';
                    successMessage.style.fontSize = '30px';
                    successMessage.style.fontWeight = 'bold';
                    successMessage.style.color = 'green';
                    successMessage.style.marginLeft = '10px';

                    // Add the success message element to the QR code container
                    qrCodeContainer.appendChild(successMessage);

                    // Enable the submit button
                    var submitButton = document.getElementById('submit-button');
                    submitButton.disabled = false;
                }, 5000);
            });
        </script>
        <!-- end solve qrcode -->


        <script>
            function checkInputRange() {
                const input = document.getElementById("form1");
                const min = parseInt(input.min);
                const max = parseInt(input.max);
                let value = parseInt(input.value);

                if (isNaN(value)) {
                    value = min;
                } else if (value < min) {
                    value = min;
                } else if (value > max) {
                    value = max;
                }

                input.value = value;
                calculateTotal();
            }
        </script>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

        <script>
            function calculateTotal() {
                const pricePerItem = parseFloat(document.getElementById("priceItem").innerHTML);
                // const pricePerItem = document.getElementById("priceItem").value; // giá tiền của mỗi sản phẩm
                const quantity = document.getElementById("form1").value; // số lượng sản phẩm được chọn
                const totalPrice = pricePerItem * quantity; // tính giá trị tổng tiền hàng
                document.getElementById("totalPrice").innerText = totalPrice + " VNĐ"; // cập nhật giá trị tổng tiền hàng mới


                var voucherCode = document.getElementById("voucherInput").value;
                var voucherValue = 0;
                if (voucherCode === "abcd1234") {
                    voucherValue = 1000000;
                }
                document.getElementById("voucherValue").innerText = voucherValue + " VNĐ";

                const voucher = parseFloat(document.getElementById("voucherValue").innerHTML);

                const totalAmount = totalPrice - voucher; // tính giá trị tổng thanh toán (bao gồm VAT)
                document.getElementById("totalAmount").innerText = totalAmount; // cập nhật giá trị tổng thanh toán mới
            }
            document.getElementById("voucherButton").addEventListener("click", calculateTotal);
        </script>
    </body>

    </html>

    </html>