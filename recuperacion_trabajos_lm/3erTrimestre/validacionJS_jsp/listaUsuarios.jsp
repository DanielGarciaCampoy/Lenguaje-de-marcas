
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--import-->
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.jdbc.Driver"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista usuarios</title>
        <link rel="stylesheet" href="css/style.css">
        <!--boostrap css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    </head>
    <body>
        <!--navbar-->
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">Validación</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" style="width: 20%;">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Registarse</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Base de datos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <!--BBDD-->
        <%
            //Conectarse a la base de datos
            Connection con;
            String url="jdbc:mysql://localhost:3306/registrovalidacion";
            String Driver="com.mysql.jdbc.Driver";
            String user="root";
            String clave="";
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,clave);

            //seleccionar todo
            Statement s = con.createStatement();
            ResultSet listado = s.executeQuery ("SELECT * FROM usuario");
            
        %>
        <div id="container" align="center">
            <h1>Tabla de usuarios</h1>
            <table border="2">
                <thead>
                    <tr>
                        <th>ID</th><!--id-->
                        <th>Nombre de usuario</th> <!-- nombre -->
                        <th>Email</th><!--email-->
                        <th>Contraseña</th> <!-- contrasenia -->
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (listado.next()) {
                    %>
                    <tr>
                        <td><%= listado.getInt("id")%></td>
                        <td><%= listado.getString("nombre")%></td>
                        <td><%= listado.getString("email")%></td>
                        <td><%= listado.getString("contrasenia")%></td>
                        <td>
                            <a href="#" class="btn btn-warning">Editar</a>
                            <a href="otros/delete.jsp?d=<%=listado.getString("id")%>" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>
                    <%  }   %>
                </tbody>
            </table>

        </div>
        
        <script src="js/script.js"></script>
        <!--bootstrap js-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    </body>
</html>
