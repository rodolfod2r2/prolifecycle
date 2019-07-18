<%--
  Created by IntelliJ IDEA.
  User: Rodolfo
  Date: 12/09/2017
  Time: 00:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
                <li class="active">GAMIFICAÇÃO</li>
            </ol>
            <div class="well well-asset-options clearfix">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="btn-toolbar btn-toolbar-media-manager pull-left" role="toolbar">
                            <div class="btn-group" role="group">
                                <h4 class="panel-title">Gamificação</h4>
                            </div>
                        </div>
                        <div class="btn-group pull-right">
                            <a href="fprojeto.html" class="btn btn-success btn-quirk btn-block">Adicionar</a>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <c:forEach var="gamificacao" items="${listarGamificacoes}">
                    <div class="col-xs-12 col-md-4 col-lg-3 paddingtop20">
                        <div class="panel panel-profile grid-view">
                            <div class="panel-heading">
                                <div class="text-center">
                                    <a href="#" class="panel-profile-photo">
                                        <img class="img-circle" src="../${gamificacao.arquivo.path}${gamificacao.arquivo.nome}" alt="">
                                    </a>
                                    <h4 class="panel-profile-name">${gamificacao.nome}</h4>
                                </div>
                                <ul class="panel-options">
                                    <li><a class="tooltips" href="fprojeto.jsp" data-toggle="tooltip" title="" data-original-title="Editar Projeto"><i class="fa fa-pencil"></i></a></li>
                                    <li><a class="tooltips" href="detalheprojeto.jsp" data-toggle="tooltip" title="" data-original-title="Exibir Detalhes"><i class="glyphicon glyphicon-option-vertical"></i></a></li>
                                </ul>
                            </div>
                            <div class="panel-body people-info">
                                <div class="info-group">
                                    <label>Sobre</label>
                                        ${gamificacao.descricao}
                                </div>
                                <div class="info-group">
                                    <label>Valor da Gamificação</label>
                                    <h4>${gamificacao.pontos} pts</h4>
                                </div>
                            </div>
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

