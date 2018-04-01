<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>its my chat</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../resources/css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper" class="col-lg-12">

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">client</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <input type="text" class="form-control" placeholder="Username" id="username">
                </div>
                <div class="col-lg-3">
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row" style="padding-top: 20px">
                <div class="col-lg-3">
                    <button type="button" class="btn btn-success" id="connectBtn" onclick="connectClient();">Connect</button>
                </div>
                <div class="col-lg-3">
                    <button type="button" class="btn btn-danger" onclick="leave()">leave</button>
                </div>

            </div>
            <div class="row" style="padding-top: 20px">
                <div class="col-lg-5">
                    <textarea class="form-control" rows="15" id="log"></textarea>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row" style="padding-top: 20px">
                <div class="col-lg-5">
                    <div class="form-group input-group">
                        <input type="text" class="form-control" id="msg">
                        <span class="input-group-btn">
                                                <button class="btn btn-default" type="button" onclick="send();"><i
                                                        class="fa fa-send"></i>
                                                </button>
                                            </span>
                    </div>
                </div>

                <!-- /.col-lg-12 -->
            </div>


            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
<script src="../resources/websocket.js"></script>

<!-- jQuery -->
<script src="../resources/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../resources/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../resources/js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../resources/js/sb-admin-2.js"></script>

</body>

</html>
