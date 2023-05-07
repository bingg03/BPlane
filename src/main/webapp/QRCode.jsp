<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <style>
        .modal-body {
            margin-top: 20px;
        }

        #qr-code-container {
            float: right;
            width: 50%;
            max-width: 480px;
            /* giới hạn chiều rộng tối đa của QR code */
            max-height: 480px;
            /* giới hạn chiều cao tối đa của QR code */
            margin-top: 20px;
            margin-right: auto;
            margin-left: auto;
        }

        #qr-code-container {
            margin-top: 20px;
        }

        

        .button-container {
            text-align: left;
        }

        .button-container input:first-child {
            margin-right: 10px;
        }
    </style>

    <style>
        .info-label,
        .info-value,
        .form-control {
            display: inline-block;
            vertical-align: middle;
        }
    </style>
</head>

<body>
    <form action="checkout">
        <div class="modal-header">
            <h4 style="font-weight: bold; font-size: 30px;" class="modal-title">Thanh toán (QR Code)</h4>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
            <div class="form-group">

                <div id="qr-code-container" style="float: right; width: 50%; margin-top: 20px;">
                    <img style="width: 100%; height: auto;"
                        src="https://cdn.printgo.vn/uploads/media/790919/tao-ma-qr-code-san-pham-1_1620927223.jpg">
                    <div id="payment-success-message" style="display: none;">Bạn đã thanh toán thành công</div>
                </div>
            </div>
        </div>


        <div class="info-container">
            <div style="margin-left: 20px; margin-bottom: 20px;" class="aaa">
                <span style="font-weight: bold; font-size: 20px;" class="info-label">  Họ tên:</span>
                <span class="info-value">
                <input style="font-size: 20px; background-color: transparent; border-color: transparent; border: none;" 
                type="text" class="form-control" id="name-input1" name="name1"
                value="${sessionScope.acc != null ? sessionScope.acc.name : ''}" readonly>
                </span>
            </div>
            <br>

            <div style="margin-left: 20px; margin-bottom: 20px;" class="aaa">
                <span style="font-weight: bold; font-size: 20px;" class="info-label">  ID Vé:</span>
                <span class="info-value">
                <input style="font-size: 20px; background-color: transparent; border-color: transparent; border: none;" 
                type="text" class="form-control" id="name-input2" name="name2" readonly>
                </span>
            </div>
            <br>

            <div style="margin-left: 20px; margin-bottom: 20px;" class="aaa">
                <span style="font-weight: bold; font-size: 20px;" class="info-label">  Số lượng đặt:</span>
                <span class="info-value">
                <input style="font-size: 20px; background-color: transparent; border-color: transparent; border: none;" 
                type="text" class="form-control" id="name-input3" name="name3" readonly>
                </span>
            </div>
            <br>

            <div style="margin-left: 20px; margin-bottom: 20px;" class="aaa">
                <span style="font-weight: bold; font-size: 20px;" class="info-label">  Tổng tiền:</span>
                <span class="info-value">
                <input style="font-size: 20px; background-color: transparent; border-color: transparent; border: none;" 
                type="text" class="form-control" id="name-input4" name="name4" readonly>
                </span>
            </div>
            <br>

        </div>


        <div class="button-container">
            <input style="margin-left: 70px;" type="button" class="btn btn-default" data-dismiss="modal" value="Hủy" onclick="goBack()">
            <input onclick="checkout" type="submit" class="btn btn-success" value="Xác nhận" id="submit-button" disabled>
        </div>
    </form>
    
    
    <script>
		function goBack() {
  			window.history.back();
		}
	</script>

    <script>
 	// Lấy thông tin query string từ URL
    const queryString = window.location.search;
    // Tạo một URLSearchParams object từ query string
    const urlParams = new URLSearchParams(queryString);

    // Lấy giá trị của các tham số từ URL
    const fid = urlParams.get('fid');
    const totalA = urlParams.get('totalA');
    const quanlity = urlParams.get('quanlity');

    // Set giá trị của các input
    document.getElementById('name-input2').value = fid;
    document.getElementById('name-input3').value = quanlity;
    document.getElementById('name-input4').value = totalA;    
    </script>
        

    <style>
        #payment-success-message {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            text-align: center;
            margin-top: 10px;
            font-size: 18px;
            font-weight: bold;
        }

    </style>

    <script>
        window.addEventListener("load", function () {
            var qrContainer = document.getElementById("qr-code-container");
            setTimeout(function () {
                qrContainer.querySelector("#payment-success-message").style.display = "block";
                document.getElementById("submit-button").disabled = false;
            }, 5000); // đợi 5 giây trước khi hiển thị thông báo thành công
        });
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


</body>

</html>

</html>