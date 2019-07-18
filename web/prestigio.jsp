<%--
  Created by IntelliJ IDEA.
  User: Rodolfo
  Date: 12/09/2017
  Time: 00:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">-->
    <title>ProLife Cycle</title>
    <link rel="stylesheet" href="assets/lib/Hover/hover.css">
    <link rel="stylesheet" href="assets/lib/fontawesome/css/font-awesome.css">
    <link rel="stylesheet" href="assets/lib/weather-icons/css/weather-icons.css">
    <link rel="stylesheet" href="assets/lib/ionicons/css/ionicons.css">
    <link rel="stylesheet" href="assets/lib/jquery-toggles/toggles-full.css">
    <link rel="stylesheet" href="assets/lib/morrisjs/morris.css">
    <link rel="stylesheet" href="assets/css/quirk.css">
    <script src="assets/lib/modernizr/modernizr.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="assets/lib/html5shiv/html5shiv.js"></script>
    <script src="assets/lib/respond/respond.src.js"></script>
    <![endif]-->
</head>

<body>
<header>
    <div class="headerpanel">
        <div class="logopanel">
            <h2><a href="index.html">ProLife Cycle</a></h2>
        </div>
        <div class="headerbar">
            <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
            <div class="header-right">
                <ul class="headermenu">
                    <li>
                        <a class="btn btn-chat">
                            <i class="fa fa-sign-out"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
<section>
    <%@ include file="leftbar.jsp" %>
    <div class="mainpanel">
        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="index.html"><i class="fa fa-home mr5"></i> DASHBOARD</a></li>
                <li>CONFIGURAÇÕES</li>
                <li class="active">PRESTIGIOS</li>
            </ol>
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                    <form action="" method="post">
                        <div class="panel">
                            <div class="panel-heading">
                                <h4 class="panel-title">Prestigio</h4>
                            </div>
                            <div class="panel-body">
                                <div class="col-md-6 col-lg-11">
                                    <div class="form-group">
                                        <input type="text" name="nprestigio" placeholder="Nome do Prestigio"
                                               class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-1">
                                    <button type="submit" class="btn btn-success btn-quirk btn-block mb20">Salvar
                                    </button>
                                </div>
                                <div class="col-md-12 col-lg-12">
                                    <div class="form-group">
                                        <textarea id="autosize" name="sclasse" class="form-control" rows="7"
                                                  placeholder="Sobre o Prestigio" data-autosize-on="true"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12'">
                    <c:forEach var="prestigio" items="${listarPrestigios}">
                        <div class="col-xs-12 col-md-4 col-lg-3 mt20">
                            <div class="profile-left-heading">
                                <ul class="panel-options">
                                    <li><a href="perfil.jsp"><i class="glyphicon glyphicon-option-vertical"></i></a></li>
                                </ul>
                                <h2 class="profile-name">${prestigio.nome}</h2>
                                <h4 class="profile-designation">${prestigio.descricao}</h4>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="assets/lib/jquery/jquery.js"></script>
<script src="assets/lib/jquery-ui/jquery-ui.js"></script>
<script src="assets/lib/bootstrap/js/bootstrap.js"></script>
<script src="assets/lib/jquery-toggles/toggles.js"></script>
<script src="assets/js/quirk.js"></script>
</body>
</html>
