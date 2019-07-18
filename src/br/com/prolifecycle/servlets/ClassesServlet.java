package br.com.prolifecycle.servlets;

import br.com.prolifecycle.controller.ControllerGenerics;
import br.com.prolifecycle.model.vo.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(
        name = "ClassesServlet",
        urlPatterns = {
                "/prolifecycle/autenticar",
                "/prolifecycle/listaprojetos",
                "/prolifecycle/listausuarios",
                "/prolifecycle/listaclasses",
                "/prolifecycle/listafamilias",
                "/prolifecycle/listaprestigios",
                "/prolifecycle/listagamificacoes"
        })
public class ClassesServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String url = request.getServletPath();
        String tipoForm = request.getParameter("tipoForm");

        if (("/prolifecycle/autenticar".equals(url))) {
            doPostAutenticar(request, response);
        } else if (("/prolifecycle/listaprojetos".equals(url)) && ("salvar-projeto".equals(tipoForm))) {
            doPostProjeto(request, response);
        } else if (("/prolifecycle/listausuarios".equals(url)) && ("salvar-usuario".equals(tipoForm))) {
            doPostUsuario(request, response);
        } else if (("/prolifecycle/listaclasses".equals(url)) && ("salvar-classe".equals(tipoForm))) {
            doPostClasse(request, response);
        } else if (("/prolifecycle/listafamilias".equals(url)) && ("salvar-familia".equals(tipoForm))) {
            doPostFamilia(request, response);
        } else if (("/prolifecycle/listaprestigios".equals(url)) && ("salvar-prestigio".equals(tipoForm))) {
            doPostPrestigio(request, response);
        } else {
            doPostGamificacao(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String url = request.getServletPath();

        if ("/prolifecycle/listaprojetos".equals(url)) {
            doGetProjeto(request, response);
        } else if ("/prolifecycle/listausuarios".equals(url)) {
            doGetUsuario(request, response);
        } else if ("/prolifecycle/listaclasses".equals(url)) {
            doGetClasse(request, response);
        } else if ("/prolifecycle/listafamilias".equals(url)) {
            doGetFamilia(request, response);
        } else if ("/prolifecycle/listaprestigios".equals(url)) {
            doGetPrestigio(request, response);
        } else {
            doGetGamificacao(request, response);
        }

    }

    protected void doPostAutenticar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String nick = request.getParameter("email");
        String senha = request.getParameter("senha");

        if(nick.equals("") || senha.equals("")){
            response.sendRedirect(".");
            return;
        }

        Usuario usuario = new Usuario();

        usuario.setEmail(nick);
        usuario.setSenha(senha);

        ControllerGenerics<Usuario> contUsuario = new ControllerGenerics<>();
        usuario = contUsuario.autenticarUsu(nick,senha);
        if(usuario == null){
            response.sendRedirect(".");
            return;
        }

        HttpSession session = request.getSession(true);
        session.setAttribute("usuario", usuario);
        session.setMaxInactiveInterval(10);
        response.sendRedirect("dashboard.jsp");

    }


    protected void doPostProjeto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String nome = request.getParameter("nclasse");
        String sobre = request.getParameter("sclasse");
        Projeto projeto = new Projeto();
        projeto.setNome(nome);
        projeto.setDescricao(sobre);
        ControllerGenerics<Projeto> contProjeto = new ControllerGenerics<>();
        contProjeto.salvar(projeto);

        doGetProjeto(request, response);

    }

    protected void doGetProjeto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        Projeto projeto = new Projeto();
        ControllerGenerics<Projeto> contProjeto = new ControllerGenerics<>();
        List<Projeto> resultadosProjeto = contProjeto.exibirLista(projeto);
        request.setAttribute("listarProjetos", resultadosProjeto);
        RequestDispatcher rd = request.getRequestDispatcher("projeto.jsp");
        rd.forward(request, response);

    }

    protected void doPostUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String nome = request.getParameter("nclasse");
        String sobre = request.getParameter("sclasse");
        Usuario usuario = new Usuario();
        usuario.setNome(nome);
        usuario.setEmail(sobre);
        ControllerGenerics<Usuario> contUsuario = new ControllerGenerics<>();
        contUsuario.salvar(usuario);

        //doGetUsuario(request, response);

    }

    protected void doGetUsuario(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        Usuario usuario = new Usuario();
        ControllerGenerics<Usuario> contUsuario = new ControllerGenerics<>();

        if ((request.getParameter("remover") != null) && request.getParameter("id") != null) {

            int id = Integer.parseInt(request.getParameter("id"));
            contUsuario.remover(usuario, id);
            response.sendRedirect("listausuarios");

        } else {

            List<Usuario> resultadosUsuario = contUsuario.exibirLista(usuario);
            request.setAttribute("listarUsuarios", resultadosUsuario);
            RequestDispatcher rd = request.getRequestDispatcher("usuario.jsp");
            rd.forward(request, response);

        }


    }


    protected void doPostClasse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String nome = request.getParameter("nclasse");
        String sobre = request.getParameter("sclasse");
        Classe classe = new Classe();
        classe.setNome(nome);
        classe.setDescricao(sobre);
        ControllerGenerics<Classe> contClasse = new ControllerGenerics<>();
        contClasse.salvar(classe);

        doGetClasse(request, response);

    }

    protected void doGetClasse(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        Classe classe = new Classe();
        ControllerGenerics<Classe> contClasse = new ControllerGenerics<>();

        if ((request.getParameter("remover") != null) && request.getParameter("id") != null) {

            int id = Integer.parseInt(request.getParameter("id"));
            contClasse.remover(classe, id);
            response.sendRedirect("listaclasses");

        } else {

            List<Classe> resultadosClasse = contClasse.exibirLista(classe);
            request.setAttribute("listarClasses", resultadosClasse);
            RequestDispatcher rd = request.getRequestDispatcher("classe.jsp");
            rd.forward(request, response);

        }
    }


    protected void doPostFamilia(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String nome = request.getParameter("nfamilia");
        String sobre = request.getParameter("sfamilia");
        Familia familia = new Familia();
        familia.setNome(nome);
        familia.setDescricao(sobre);
        ControllerGenerics<Familia> contFamilia = new ControllerGenerics<>();
        contFamilia.salvar(familia);

        doGetFamilia(request, response);

    }

    protected void doGetFamilia(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        Familia familia = new Familia();
        ControllerGenerics<Familia> contFamilia = new ControllerGenerics<>();

        if ((request.getParameter("remover") != null) && request.getParameter("id") != null) {

            int id = Integer.parseInt(request.getParameter("id"));
            contFamilia.remover(familia, id);
            response.sendRedirect("listafamilias");

        } else {

            List<Familia> resultadosFamilia = contFamilia.exibirLista(familia);
            request.setAttribute("listarFamilias", resultadosFamilia);
            RequestDispatcher rd = request.getRequestDispatcher("familia.jsp");
            rd.forward(request, response);

        }

    }

    protected void doPostPrestigio(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nome = request.getParameter("nprestigio");
        String sobre = request.getParameter("sprestigio");
        Prestigio prestigio = new Prestigio();
        prestigio.setNome(nome);
        prestigio.setDescricao(sobre);
        ControllerGenerics<Prestigio> contPrestigio = new ControllerGenerics<>();
        contPrestigio.salvar(prestigio);

        doGetPrestigio(request, response);

    }

    protected void doGetPrestigio(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Prestigio prestigio = new Prestigio();
        ControllerGenerics<Prestigio> contPrestigio = new ControllerGenerics<>();

        if ((request.getParameter("remover") != null) && request.getParameter("id") != null) {

            int id = Integer.parseInt(request.getParameter("id"));
            contPrestigio.remover(prestigio, id);
            response.sendRedirect("listaprestigios");

        } else {

            List<Prestigio> resultadosPrestigio = contPrestigio.exibirLista(prestigio);
            request.setAttribute("listarPrestigios", resultadosPrestigio);
            RequestDispatcher rd = request.getRequestDispatcher("prestigio.jsp");
            rd.forward(request, response);

        }


    }

    protected void doPostGamificacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String nome = request.getParameter("nprestigio");
        String sobre = request.getParameter("sprestigio");
        Gamificacao gamificacao = new Gamificacao();
        gamificacao.setNome(nome);
        gamificacao.setDescricao(sobre);
        ControllerGenerics<Gamificacao> contGamificacao = new ControllerGenerics<>();
        contGamificacao.salvar(gamificacao);

        doGetGamificacao(request, response);

    }

    protected void doGetGamificacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        Gamificacao gamificacao = new Gamificacao();
        ControllerGenerics<Gamificacao> contGamificacao = new ControllerGenerics<>();

        if ((request.getParameter("remover") != null) && request.getParameter("id") != null) {

            int id = Integer.parseInt(request.getParameter("id"));
            contGamificacao.remover(gamificacao, id);
            response.sendRedirect("listagamificacoes");

        } else {

            List<Gamificacao> resultadosGamificacao = contGamificacao.exibirLista(gamificacao);
            request.setAttribute("listarGamificacoes", resultadosGamificacao);
            RequestDispatcher rd = request.getRequestDispatcher("gamificacao.jsp");
            rd.forward(request, response);

        }

    }


}
