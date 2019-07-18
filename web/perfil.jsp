<%--
  Created by IntelliJ IDEA.
  User: Rodolfo
  Date: 12/09/2017
  Time: 00:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <div class="row">
                <div class="col-xs-12 col-md-6 col-lg-6 profile-left">
                    <div class="profile-left-heading">
                        <ul class="panel-options">
                            <li><a><i class="glyphicon glyphicon-option-vertical"></i></a></li>
                        </ul>
                        <div class="profile-photo"><img class="img-circle img-responsive"
                                                        src="assets/images/photos/profilepic.png" alt=""></div>
                        <h2 class="profile-name">Rodolfo Gonçalves</h2>
                        <h4 class="profile-designation">Analista Desenvolvedor Sênior/Pleno</h4>
                        <div class="row">
                            <div class="col-xs-12 col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4">
                                <div class="panel-heading">
                                    <div class="col-xs-12 col-md-12 col-lg-3">
                                        <h3 class="panel-title text-danger pull-right">XP</h3>
                                    </div>
                                    <div class="col-xs-12 col-md-12 col-lg-9">
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                 aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                    <div class="profile-left-body">
                        <!--
                        <div class="row">
                            <div class="col-xs-12 col-md-12 col-lg-12">
                                <div class="panel-heading">
                                    <div class="col-lg-6">
                                        <h3 class="panel-title pull-right">XP</h3>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        -->

                        <h4 class="panel-title">Sobre</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed est metus, mollis in est non,
                            ultrices euismod erat. Aenean viverra porttitor purus vel pretium. Maecenas in nisi ante.
                            Nunc ac leo ac elit congue vestibulum. Etiam mattis pharetra odio nec vestibulum. Vestibulum
                            ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur
                            convallis at velit a malesuada. Sed aliquam rhoncus consectetur. Vivamus non turpis varius,
                            elementum tortor ac, laoreet orci. Fusce nulla est, eleifend vehicula ex gravida, malesuada
                            bibendum massa. Curabitur vel magna elit. Pellentesque nisl ante, congue quis semper vitae,
                            molestie facilisis leo.</p>
                        <p>Ut mattis sapien ex, vel rutrum sem tincidunt et. Ut scelerisque ligula at consequat
                            ultricies. Integer nec laoreet nibh, at posuere massa. Donec varius, dolor non viverra
                            viverra, quam quam varius mi, nec sodales nisl libero eget dolor. Duis mollis pellentesque
                            purus, et vulputate turpis scelerisque eget. Curabitur lacus lectus, consequat ac egestas
                            eu, pellentesque hendrerit ex. Cras bibendum massa eu nunc tristique, sed rutrum purus
                            euismod. Phasellus ac urna eget nisi iaculis pretium. Suspendisse vehicula, augue id tempor
                            interdum, lacus ex lobortis tellus, ac fermentum nisi risus quis lorem. Cras dictum magna ut
                            orci commodo ultricies. Vivamus pulvinar sapien sit amet ullamcorper fringilla. Suspendisse
                            vel sollicitudin dolor. Donec cursus tellus in tortor aliquam aliquam. Nullam et commodo
                            metus, ut condimentum elit. Curabitur quis erat efficitur, consequat felis a, condimentum
                            purus.</p>
                        <hr class="fadeout">

                        <h4 class="panel-title">Habilidades</h4>
                        <div class="row">
                            <div class="col-xs-12 col-md-12 col-lg-12">
                                <div class="col-xs-3 col-md-3 col-lg-3">
                                    <div class="panel-heading">
                                        <div class="pull-left">
                                            XP &nbsp;
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                 aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3 col-lg-3">
                                    <div class="panel-heading">
                                        <div class="pull-left">
                                            XP &nbsp;
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                 aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3 col-lg-3">
                                    <div class="panel-heading">
                                        <div class="pull-left">
                                            XP &nbsp;
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                 aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-xs-3 col-md-3 col-lg-3">
                                    <div class="panel-heading">
                                        <div class="pull-left">
                                            XP &nbsp;
                                        </div>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                 aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 40%">
                                                <span class="sr-only">40% Complete (success)</span>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 profile-sidebar">
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Projetos Atuante</h4>
                                </div>
                                <div class="panel-body">
                                    <ul class="media-list user-list">
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object img-circle"
                                                         src="assets/images/photos/user9.png" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="">Google GO</a></h4>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object img-circle"
                                                         src="assets/images/photos/user10.png" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="">Apple iOS</a></h4>
                                            </div>
                                        </li>
                                        <li class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object img-circle"
                                                         src="assets/images/photos/user3.png" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="">Microsoft Azure</a></h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div><!-- panel -->
                        </div>
                        <div class="col-sm-6 col-md-12">
                            <div class="panel">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Atividades do Utilizador</h4>
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
                                                </div><!-- media -->
                                            </div><!-- panel-heading -->
                                            <div class="panel-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                                                pellentesque euismod turpis, nec tempus metus malesuada a. Etiam at
                                                cursus risus, sit amet vehicula nulla. Donec vitae nisi et ipsum
                                                vulputate aliquam.
                                            </div>
                                        </div><!-- panel panel-post -->

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
                                                </div><!-- media -->
                                            </div><!-- panel-heading -->
                                            <div class="panel-body">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                                                pellentesque euismod turpis, nec tempus metus malesuada a. Etiam at
                                                cursus risus, sit amet vehicula nulla. Donec vitae nisi et ipsum
                                                vulputate aliquam.
                                            </div>
                                        </div><!-- panel panel-post -->

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
                                                </div><!-- panel-heading -->
                                                <div class="panel-body">
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce
                                                    pellentesque euismod turpis, nec tempus metus malesuada a. Etiam at
                                                    cursus risus, sit amet vehicula nulla. Donec vitae nisi et ipsum
                                                    vulputate aliquam.
                                                </div>
                                            </div><!-- panel panel-post -->
                                            <div class="timeline-date"><a href="">Carregar maisassets.</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- panel -->
                        </div>
                    </div><!-- row -->

                </div>
            </div><!-- row -->
        </div><!-- contentpanel -->
    </div><!-- mainpanel -->
</section>

<script src="assets/lib/jquery/jquery.js"></script>
<script src="assets/lib/jquery-ui/jquery-ui.js"></script>
<script src="assets/lib/bootstrap/js/bootstrap.js"></script>
<script src="assets/lib/jquery-toggles/toggles.js"></script>

<script src="assets/js/quirk.js"></script>

</body>
</html>

