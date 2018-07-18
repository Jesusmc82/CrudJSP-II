<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link REL=StyleSheet HREF="../style.css" TYPE="text/css" MEDIA=screen>
        <title>Agrega Profesional</title>
        <script type="text/javascript" src="scripts.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="bg">
            <h1>MisMatronas.com</h1>
            <p style="font-size:200%; margin-left:30px;">Agregue un nuevo profesional:</p>
            <a href=../menu.jsp><button class="button2">Pagina Principal</button></a>
            <a href=Profesional.jsp><button class="button2">Profesional</button></a>
            <div class="container">
                <div class="row">
                    <form method="get" action="NuevoProfesional.jsp" autocomplete="off">
                        <div class="col-md-10 col-md-offset-10">
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">Numero Colegiado</span>
                                    <input type="text" name="Numero_Colegiado" class="form-control" placeholder="" aria-describedby="sizing-addon2">
                                </div>
                                <p>Profesional
                                    <select name="Profesional">
                                        <%
                                            ArrayList<String> profesion = new ArrayList();
                                            profesion.add("Fisioterapeuta");
                                            profesion.add("Matrona");
                                            for (String n : profesion) {
                                                out.println("<option>" + n + "</option>");
                                            }
                                        %>
                                    </select>
                                </p>
                                <div class="input-group">
                                    <span class="input-group-addon">Nombre</span>
                                    <input type="text" name="Nombre" class="form-control" placeholder="" aria-describedby="sizing-addon2">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">Apellidos</span>
                                    <input type="text" name="Apellidos" class="form-control" placeholder="" aria-describedby="sizing-addon2">
                                </div>
                                <button type="submit" class="btn btn-success">Aceptar</button>
                                <button type="button" class="btn btn-danger" onclick="cancelar()">Cancelar</button>
                            </div>
                    </form>
                </div>
            </div>
    </body>
</html>