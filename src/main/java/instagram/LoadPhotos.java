package instagram;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jorda
 */
@WebServlet(name = "LoadPhotos", urlPatterns = {"/LoadPhotos"})
public class LoadPhotos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
                        

            InstaLoader insta = new InstaLoader(458131440);

            List<Map<String, String>> searchMap = new ArrayList<>();
            List<Map<String, String>> map = insta.getList();
            
            String geoString = request.getParameter("location"); 
            
            GeoLocator geo = new GeoLocator(geoString);
            double lat, lng;


            /*for(int i = 0; i < map.size(); i++) {              
               lat = Double.parseDouble(map.get(i).get("latitude"));
               lng = Double.parseDouble(map.get(i).get("longitude"));
               
               if( geo.checkLng(lng) && geo.checklat(lat) )
                   searchMap.add(map.get(i));  
            }*/
            //request.setAttribute("map", searchMap);
            //request.getRequestDispatcher("photos.jsp").forward(request, response);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadPhotos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadPhotos at " + request.getContextPath() + "</h1>");
            /*for (int i = 0; i < searchMap.size(); i++) {
                out.println(searchMap.get(i));
            }*/
            out.println(geoString);
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}