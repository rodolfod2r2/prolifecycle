package br.com.prolifecycle.filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "AutenticarFilter" ,
            urlPatterns = {
                    "/prolifecycle/listaprojetos",
                    "/prolifecycle/listausuarios",
                    "/prolifecycle/listaclasses",
                    "/prolifecycle/listafamilias",
                    "/prolifecycle/listaprestigios",
                    "/prolifecycle/listagamificacoes",
                    "/prolifecycle/dashboard.jsp"
            })

public class AutenticarFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request  = (HttpServletRequest) req;
        HttpServletResponse response  = (HttpServletResponse) resp;

        String uri = request.getRequestURI();

        if(request.getSession(false) == null && !((uri.equals("") || uri.equals("index.jsp"))) ){
            response.sendRedirect(".");
            return;
        }

        chain.doFilter(request, response);


    }

    public void init(FilterConfig config) throws ServletException {

    }

}
