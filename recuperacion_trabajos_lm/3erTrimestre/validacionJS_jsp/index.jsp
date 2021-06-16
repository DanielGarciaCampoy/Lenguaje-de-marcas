
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--import-->
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.jdbc.Driver"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrarse</title>
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
                        <a class="nav-link" href="#">Registarse</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="listaUsuarios.jsp">Base de datos</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!--formulario-->
    <form action="bd.html" method="POST" id="form">
        <div class="form">
            <h1 style="text-align: center;">Registro</h1>
            <div class="grupo">
                <input type="number" name="id" id="id" ><span class="barra"></span>
                <label for="id">ID de usuario</label>
            </div>
            <div class="grupo">
                <input type="text" name="nombre" id="nombre" ><span class="barra"></span>
                <label for="nombre">Nombre de usuario</label>
            </div>
            <div class="grupo">
                <input type="email" name="email" id="email" ><span class="barra"></span>
                <label for="email">Email</label>
            </div>
            <div class="grupo">
                <input type="password" name="pass" id="password" ><span class="barra"></span>
                <label for="password">Contraseña</label>
            </div>
            
            <button type="submit" style="margin-left: 10%;">Registrarse</button>
            <p class="warnings" id="warnings"></p>
        </div>
    </form>

    <script src="js/script.js"></script>
    <!--bootstrap js-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
</body>
</html>
