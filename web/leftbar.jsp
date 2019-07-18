<%--
  Created by IntelliJ IDEA.
  User: rodolfo
  Date: 28/09/17
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="leftpanel">
    <div class="leftpanelinner">
        <div class="media leftpanel-profile">
            <div class="media-left">
                <a href="#">
                    <img src="assets/images/photos/loggeduser.png" alt="" class="media-object img-circle">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">Rodolfo Gonçalves</h4>
                <span>Analista Desenvolvedor</span>
            </div>
        </div>
        <div>
            <h5 class="sidebar-title">Gerenciar</h5>
            <ul class="nav nav-pills nav-stacked nav-quirk">
                <li><a href="dashboard.jsp"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
                <li><a href="listaprojetos"><i class="fa fa-home"></i> <span>Projetos</span></a></li>
                <li><a href="listausuarios"><i class="fa fa-home"></i> <span>Usuários</span></a></li>
                <li><a href="listagamificacoes"><i class="fa fa-cubes"></i> <span>Gamificação</span></a></li>
                <li class="nav-parent">
                    <a href=""><i class="glyphicon glyphicon-cog"></i> <span>Configurações</span></a>
                    <ul class="children">
                        <li><a href="listafamilias">Familia</a></li>
                        <li><a href="listaclasses">Classe</a></li>
                        <li><a href="listaprestigios">Prestigio</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
