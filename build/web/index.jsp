<%-- 
    Document   : index
    Created on : 13-mar-2018, 12:04:03
    Author     : jesus martin castro
--%>
<%@page import="java.util.HashMap"%>
<%-- inicio.jsp --%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Confirmación</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <div class="bg">

            <h1>MisMatronas.com</h1>
            <p style="font-size:200%; margin-left:30px;">Inserte un trabajador y contraseña:</p>
            <form method="get" action="index.jsp" autocomplete="off">
                <div class="container">
                    <%

                        HashMap<String, String> usuarioContrasena = new HashMap<String, String>();
                        usuarioContrasena.put("Carmen", "Carmen");
                        usuarioContrasena.put("Jesus", "Jesus");
                        usuarioContrasena.put("admin", "admin");
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
                    %>
                    <div class="ingreso">
                        <input type="text" placeholder="Trabajador" name="trabajador" cols="10" required>
                        <input type="password" placeholder="Contraseña" name="contrasena" required>
                        <button class="button">Entrar</button> 
                    </div>
                </div>
            </form>            
    </body>
</html>
