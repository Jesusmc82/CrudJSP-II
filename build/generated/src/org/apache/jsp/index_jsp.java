package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.HashMap;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <LINK REL=StyleSheet HREF=\"style.css\" TYPE=\"text/css\" MEDIA=screen>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html\" charset=\"UTF-8\">\n");
      out.write("        <title>Confirmación</title>\n");
      out.write("        <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" \n");
      out.write("              rel=\"stylesheet\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"bg\">\n");
      out.write("\n");
      out.write("            <h1>MisMatronas.com</h1>\n");
      out.write("            <h3>Inserte un trabajador y contraseña:</h3>\n");
      out.write("            <form method=\"get\" action=\"index.jsp\" autocomplete=\"off\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        ");


                            HashMap<String, String> usuarioContrasena = new HashMap<String, String>();
                            usuarioContrasena.put("Carmen", "0000");
                            usuarioContrasena.put("Jesus", "1234");
                            usuarioContrasena.put("admin", "5678");
                            //comprobamos si es la primera carga de página.
                            String trabajador = (String) request.getParameter("trabajador");
                            String contrasena = (String) request.getParameter("contrasena");

                            //comprobamos si hay datos insertados.
                            if (trabajador != null) {
                                if ((usuarioContrasena.containsKey(trabajador)) && (usuarioContrasena.get(trabajador).equals(contrasena))) {
                                    session.setAttribute("trabajador", trabajador);
                                    session.setAttribute("contrasena", contrasena);
                                    session.setAttribute("darBienvenida", null); 
                                    response.sendRedirect("menu.jsp");
                                } else {
                                    out.print("<script>alert('Usuario o contraseña erroneos')</script>");
                                }
                            }
                        
      out.write("\n");
      out.write("                        <p> Trabajador: <input type=\"text\" name=\"trabajador\" value=\"\"></p>\n");
      out.write("                        <p> Contraseña: <input type=\"password\" name=\"contrasena\"></p>\n");
      out.write("\n");
      out.write("                        <button class=\"button\" style=\"left:20%\">Entrar</button>\n");
      out.write("\n");
      out.write("                        ");


                        
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
