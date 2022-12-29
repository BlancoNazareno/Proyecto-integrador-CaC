
import java.io.IOException;

import java.io.PrintWriter;

import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "checkuser", urlPatterns = {"/checkuser"})

public class checkuser extends HttpServlet {

    /**
     *
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     *
     * methods.
     *
     *
     *
     * @param request servlet request
     *
     * @param response servlet response
     *
     * @throws ServletException if a servlet-specific error occurs
     *
     * @throws IOException if an I/O error occurs
     *
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try ( PrintWriter out = response.getWriter()) {

//            out.println("<h1>El usuario es: " + request.getParameter("inputEmail") + "</h1>");

            Persistencia base = new Persistencia();
            ResultSet rs = base.consultaSQL("select * from USUARIOS");

            if (rs == null) {
                out.println("No hay usuarios que coinciden con la búsqueda");
            } else {
                while (rs.next()) {
                    out.println(rs.getString("usuario"));
                    out.println(rs.getString("clave"));
                    out.println(rs.getString("nombreApellido") + "<br>");
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(checkuser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
}
