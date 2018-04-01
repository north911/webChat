<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <h1 class="page-header">It is my chat agent</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <input type="text" class="form-control" placeholder="Username" id="username">
                </div>
                <div class="col-lg-3">
                    <select class="form-control" id="slots">
                        <option value="/slotsCount 1">1</option>
                        <option value="/slotsCount 2">2</option>
                        <option value="/slotsCount 3">3</option>
                        <option value="/slotsCount 4">4</option>
                        <option value="/slotsCount 5">5</option>
                    </select>
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <div class="row" style="padding-top: 20px">
                <div class="col-lg-3">
                    <button type="button" class="btn btn-success" id="connectBtn" onclick="connectAgent();">Connect</button>
                </div>
                <div class="row" style="padding-top: 20px">
                    <div class="panel-body">
                        <div class="panel-group" id="accordion">
                        </div>
                    </div>
                </div>

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
