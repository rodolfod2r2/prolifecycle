<%--
  Created by IntelliJ IDEA.
  User: rodolfo
  Date: 25/10/17
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="shortcut icon" href="../images/favicon.png" type="image/png">-->

    <title>PROLIFECYCLE</title>

    <link rel="stylesheet" href="assets/lib/fontawesome/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/quirk.css">

    <script src="assets/lib/modernizr/modernizr.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="assets/lib/html5shiv/html5shiv.js"></script>
    <script src=assets/lib/respond/respond.src.js"></script>
    <![endif]-->
</head>

<body class="signwrapper">

<div class="sign-overlay"></div>
<div class="signpanel"></div>

<div class="panel signin">
    <div class="panel-heading">
        <h1>PROLIFECYCLE</h1>
    </div>
    <div class="panel-body">
        <form action="autenticar" method="post">
            <div class="form-group mb10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" name="email" class="form-control" placeholder="Enter Username">
                </div>
            </div>
            <div class="form-group nomargin">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="text" name="senha" class="form-control" placeholder="Enter Password">
                </div>
            </div>
            <div class="form-group mt20">
                <button class="btn btn-success btn-quirk btn-block">Entrar</button>
            </div>
        </form>
        <hr class="invisible">

    </div>
</div><!-- panel -->

</body>
</html>

