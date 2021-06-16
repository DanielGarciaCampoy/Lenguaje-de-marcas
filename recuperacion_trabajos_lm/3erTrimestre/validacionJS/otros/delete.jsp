<!--import-->
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.jdbc.Driver"%>

<%
    //conexion
    String id = request.getParameter("d");
    int no = Integer.parseInt(id);
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/registrovalidacion", "root", "");
    Statement stat = conn.createStatement();
    
    //accion
    stat.executeUpdate("DELETE FROM usuario where id="+ no + "");
    response.sendRedirect("../listaUsuarios.jsp");
%>
