<%-- 
    Document   : index
    Created on : 13-mar-2018, 12:04:03
    Author     : jesus martin castro
--%>
<%-- index.jsp --%>
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
        <title>Principal</title>
       <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
              rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <a href=index.jsp><button class="button2" width="80%">Salir</button></a>
            <% if (session.getAttribute("darBienvenida") == null){
                out.print("<script>alert('¡¡Bienvenido!!')</script>");
                session.setAttribute("darBienvenida", "activado");
            }
            %>
                
            <ul style="list-style-type:none">
               
                <li> <a href=Usuaria/Usuaria.jsp> <button class="button"; style="left:55%">Usuaria</button></a></li>
                <li><a href=Profesional/Profesional.jsp><button class="button"; style="left:57%">Profesional</button></a></li>
                <li><a href=Embarazo/Embarazos.jsp><button class="button"; style="left:59%">Embarazos</button></a></li>
                <li><a href=Historial_Clinico/HistorialClinico.jsp><button class="button"; style="left:60.5%">Historial Clinico</button></a></li>
                <li><a href=Usuaria/NuevaUsuaria.html><button class="button"; style="left:61%">Nueva Usuaria</button></a></li>
                <li><a href=Embarazo/NuevoEmbarazo.jsp><button class="button"; style="left:61%">Nuevo Embarazo</button></a></li>
                <li><a href=Profesional/AgregaProfesional.jsp><button class="button"; style="left:60.5%">Nuevo Profesional</button></a></li>
            </ul>
        </div>
    </body>
</html>
