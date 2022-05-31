/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import entity.SystemUser;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author byosmandogan
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) sr;
        HttpServletResponse res = (HttpServletResponse) sr1;
        String url = req.getRequestURI();
        HttpSession session = req.getSession();
        SystemUser user = null;
        if (session != null) {
            user = (SystemUser) session.getAttribute("user");
        }
        if (user == null && url.contains("panel")) {
            res.sendRedirect(req.getContextPath() + "/index.xhtml");
        } else {
            fc.doFilter(sr, sr1);
        }
    }

}
