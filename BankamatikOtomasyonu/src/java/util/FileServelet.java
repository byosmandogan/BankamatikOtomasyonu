package util;

import controller.DocumentBean;
import jakarta.inject.Inject;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.File;
import java.nio.file.Files;

@WebServlet(name = "FileServlet", urlPatterns = {"/file/*"})
public class FileServelet extends HttpServlet {

    @Inject
    private DocumentBean dc;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String file = request.getPathInfo();
        File f = new File(dc.getUploadTo() + file);

        Files.copy(f.toPath(), response.getOutputStream());
    }

}