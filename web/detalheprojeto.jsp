<%--
  Created by IntelliJ IDEA.
  User: Rodolfo
  Date: 12/09/2017
  Time: 00:24
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
            <ol class="breadcrumb breadcrumb-quirk">
                <li><a href="index.html"><i class="fa fa-home mr5"></i> Home</a></li>
                <li>Projetos</li>
                <li>Projeto Azure</li>
                <li class="active">Detalhes</li>
            </ol>
            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="panel panel-profile grid-view">
                        <div class="panel-heading">
                            <div class="text-center">
                                <a href="#" class="panel-profile-photo">
                                    <img class="img-circle" src="assets/images/photos/user7.png" alt="">
                                </a>
                                <h4 class="panel-profile-name">Projeto Azure</h4>
                                <p class="media-usermeta"><i class="glyphicon glyphicon-briefcase"></i> Scrum Master</p>
                            </div>
                            <ul class="panel-options">
                                <li><a class="tooltips" href="fprojeto.jsp" data-toggle="tooltip" title="" data-original-title="Editar Projeto"><i class="fa fa-pencil"></i></a></li>
                            </ul>
                        </div>
                        <div class="panel-body people-info">
                            <div class="info-group">
                                <label>Sobre</label>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed est metus, mollis in est non,
                                ultrices euismod erat. Aenean viverra porttitor purus vel pretium. Maecenas in nisi ante.
                                Nunc ac leo ac elit congue vestibulum. Etiam mattis pharetra odio nec vestibulum.
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <div class="info-group">
                                        <label>Concluido</label>
                                        <h4>35%</h4>
                                    </div>
                                </div>
                                <div class="col-xs-6">
                                    <div class="info-group">
                                        <label>Status</label>
                                        <h4>Em andamento</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="well well-asset-options clearfix">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-12">
                                <div class="btn-toolbar btn-toolbar-media-manager pull-left" role="toolbar">
                                    <div class="btn-group" role="group">
                                        <h4 class="panel-title">Equipe</h4>
                                    </div>
                                </div><!-- btn-toolbar -->
                                <div class="btn-group pull-right">
                                    <button class="btn btn-success btn-quirk btn-block">Adicionar Membros</button>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <div class="mt20">
                                    <div class="media-list user-list">
                                        <div class="media media-left">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object img-circle" src="assets/images/photos/user9.png" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="media-heading text-success">ARJ</h5>
                                                <div class="text-success">Analista de Requistos Júnior</div>
                                            </div>
                                        </div>
                                        <div class="media media-left">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object img-circle" src="assets/images/photos/user9.png" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="media-heading text-success">ARS</h5>
                                                <div class="text-success">Analista de Requistos Sênior</div>
                                            </div>
                                        </div>
                                        <div class="media media-left">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img class="media-object img-circle" src="assets/images/photos/user9.png" alt="">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h5 class="media-heading text-success">ADJ</h5>
                                                <div class="text-success">Analista de Desenvolvimento Júnior</div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="well well-asset-options clearfix">
                        <div class="row">
                            <div class="col-sm-12 col-md-12 col-lg-12">
                                <div class="btn-toolbar btn-toolbar-media-manager pull-left" role="toolbar">
                                    <div class="btn-group" role="group">
                                        <h4 class="panel-title">Tarefas</h4>
                                    </div>
                                </div><!-- btn-toolbar -->
                                <div class="btn-group pull-right">
                                    <button class="btn btn-success btn-quirk btn-block">Adicionar Tarefas</button>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <div class="mt20">
                                    <h4>Nota Fiscal</h4>
                                    <ol class="breadcrumb breadcrumb-quirk mt0">
                                        <li><i class="fa fa-user"></i> Rodolfo </li>
                                        <li><i class="fa fa-calendar"></i> 20/12/2016</li>
                                        <li><i class="fa fa-calendar"></i> 27/04/2017</li>
                                        <li><i class="fa fa-toggle-on"></i></li>
                                        <li><i class="fa fa-eye"></i> 37</li>
                                        <li class="active">Avaliado</li>
                                    </ol>
                                    <p class="text-justify mt5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt non est quis commodo. Ut et pretium nisl. Maecenas fermentum sed nunc aliquet varius.
                                        Mauris cursus id velit in malesuada. Aenean vehicula, ligula a lobortis posuere, risus mi dapibus turpis, vitae rutrum orci tellus quis diam. </p>
                                    <div class="mt20">
                                        <div class="btn-toolbar pull-left">
                                            <a class="btn btn-warning btn-quirk tooltips" data-toggle="tooltip" title="" data-original-title="Editar Tarefa">
                                                <i class="fa fa-pencil"></i> ET
                                            </a>
                                            <a class="btn btn-danger btn-quirk tooltips" data-toggle="tooltip" title="" data-original-title="Remover Tarefa">
                                                <i class="fa fa-trash"></i> DT
                                            </a>
                                            <a href="htarefa.html" class="btn btn-success btn-quirk tooltips" data-toggle="tooltip" title="" data-original-title="Historico Tarefa">
                                                <i class="fa fa-newspaper-o"></i> HT
                                            </a>
                                            <a href="" class="btn btn-success btn-quirk tooltips" data-toggle="tooltip" title="" data-original-title="Atribuir Gamificação">
                                                <i class="fa fa-usd"></i> AG
                                            </a>
                                            <a href="" class="btn btn-success btn-quirk tooltips" data-toggle="tooltip" title="" data-original-title="Atribuir Arquivo">
                                                <i class="fa fa-upload"></i> AA
                                            </a>
                                        </div>
                                    </div>
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

<script src="assets/js/quirk.js"></script>

</body>
</html>

