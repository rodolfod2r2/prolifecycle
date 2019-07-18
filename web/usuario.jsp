<%--
  Created by IntelliJ IDEA.
  User: Rodolfo
  Date: 11/09/2017
  Time: 23:59
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
        </div><!-- logopanel -->
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
            </div><!-- header-right -->
        </div><!-- headerbar -->
    </div><!-- header-->
</header>

<section>
    <%@ include file="leftbar.jsp" %>
    <div class="mainpanel">
        <div class="contentpanel">
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="index.html"><i class="fa fa-home mr5"></i> Home</a></li>
                <li class="active">Usuário</li>
            </ol>
            <div class="row">
                <div class="col-md-12 col-lg-12">
                    <div>
                        <table class="table table-inverse nomargin table-responsive">
                            <thead>
                            <tr>
                                <th>Usuário</th>
                                <th class="text-right"><a href="editoria/cadastrar" class="btn btn-success">ADICIONAR</a></th>
                            </tr>
                            </thead>
                            <tbody class="teditoria">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <c:forEach var="usuario" items="${listarUsuarios}">
                    <div class="col-xs-12 col-md-3 col-lg-3">
                        <div class="profile-left-heading">
                            <ul class="panel-options">
                                <li><a href="perfil.jsp"><i class="glyphicon glyphicon-option-vertical"></i></a></li>
                            </ul>
                            <div class="profile-photo"><img class="img-circle img-responsive"
                                                            src="../${usuario.arquivo.path}${usuario.arquivo.nome}" alt=""></div>
                            <h2 class="profile-name">${usuario.nome}</h2>
                            <h4 class="profile-designation">${usuario.classe.nome} ${usuario.familia.nome} ${usuario.prestigio.nome}</h4>
                        </div>
                        <div class="profile-left-body">
                            <h4 class="panel-title">Habilidades</h4>
                            <hr class="fadeout">
                            <h4 class="panel-title">Habilidade <span class="pull-right">10 pts</span></h4>
                            <h4 class="panel-title">Habilidade <span class="pull-right">10 pts</span></h4>
                            <h4 class="panel-title">Habilidade <span class="pull-right">10 pts</span></h4>
                            <h4 class="panel-title">Habilidade <span class="pull-right">10 pts</span></h4>
                        </div>
                    </div>
                </c:forEach>
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

