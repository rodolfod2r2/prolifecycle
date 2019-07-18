<%--
  Created by IntelliJ IDEA.
  User: Rodolfo
  Date: 11/09/2017
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--<link rel="shortcut icon" href="../images/favicon.png" type="image/png">-->
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
            <div class="row">
                <div class="col-md-12 col-lg-12">
                    <div class="row panel-quick-page">
                        <div class="col-xs-4 col-sm-5 col-md-4 page-user">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Gerenciar Usuários</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="icon ion-person-stalker"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4 page-products">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Gerenciar Projetos</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="fa fa-shopping-cart"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3 col-md-2 page-events">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Gerenciar Tarefas</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="icon ion-ios-calendar-outline"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-3 col-md-2 page-messages">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Mensagens</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="icon ion-email"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-5 col-md-2 page-reports">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Gamificação</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="icon ion-arrow-graph-up-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-2 page-statistics">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Estatisticas</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="icon ion-ios-pulse-strong"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4 page-support">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Habilidades</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="icon ion-help-buoy"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-2 page-privacy">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Perfil do Usuário</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="icon ion-android-lock"></i></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-2 page-settings">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Configurações</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="page-icon"><i class="icon ion-gear-a"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h4 class="panel-title">Atividades Recentes</h4>
                        </div>
                        <div class="panel-body">
                            <div class="timeline-wrapper">
                                <div class="timeline-date">Domingo, Julho 05, 2017</div>
                                <div class="panel panel-post-item status">
                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img alt="" src="assets/images/photos/user1.png"
                                                         class="media-object img-circle">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Rodolfo Gonçalves</h4>
                                                <p class="media-usermeta">
                                                    <span class="media-time">09:30 am</span>
                                                    <i class="glyphicon glyphicon-map-marker"></i> <a href="">Projeto
                                                    Azure</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                                        pellentesque euismod turpis, nec tempus metus malesuada a. Etiam at
                                        cursus risus, sit amet vehicula nulla. Donec vitae nisi et ipsum
                                        vulputate aliquam.
                                    </div>
                                </div>
                                <div class="panel panel-post-item status">
                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img alt="" src="assets/images/photos/user2.png"
                                                         class="media-object img-circle">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Rodolfo Gonçalves</h4>
                                                <p class="media-usermeta">
                                                    <span class="media-time">06:30 am</span>
                                                    <i class="glyphicon glyphicon-map-marker"></i> <a href="">Projeto
                                                    Azure</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                                        pellentesque euismod turpis, nec tempus metus malesuada a. Etiam at
                                        cursus risus, sit amet vehicula nulla. Donec vitae nisi et ipsum
                                        vulputate aliquam.
                                    </div>
                                </div>
                                <div class="timeline-date">Sexta, Julho 03, 2017</div>
                                <div class="panel panel-post-item status">
                                    <div class="panel-heading">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img alt="" src="assets/images/photos/user2.png"
                                                         class="media-object img-circle">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading">Rodolfo Gonçalves</h4>
                                                <p class="media-usermeta">
                                                    <span class="media-time">10:30 am</span>
                                                    <i class="glyphicon glyphicon-map-marker"></i> <a href="">Projeto
                                                    Azure</a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="panel-body">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                                            pellentesque euismod turpis, nec tempus metus malesuada a. Etiam at
                                            cursus risus, sit amet vehicula nulla. Donec vitae nisi et ipsum
                                            vulputate aliquam.
                                        </div>
                                    </div>
                                    <div class="timeline-date"><a href="">Carregar mais...</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="assets/lib/jquery/jquery.js"></script>
<script src="assets/lib/jquery-ui/jquery-ui.js"></script>
<script src="assets/lib/bootstrap/js/bootstrap.js"></script>
<script src="assets/lib/jquery-toggles/toggles.js"></script>
<script src="assets/lib/morrisjs/morris.js"></script>
<script src="assets/lib/raphael/raphael.js"></script>
<script src="assets/lib/flot/jquery.flot.js"></script>
<script src="assets/lib/flot/jquery.flot.resize.js"></script>
<script src="assets/lib/flot-spline/jquery.flot.spline.js"></script>
<script src="assets/lib/jquery-knob/jquery.knob.js"></script>
<script src="assets/js/quirk.js"></script>
<script src="assets/js/dashboard.js"></script>
</body>
</html>

