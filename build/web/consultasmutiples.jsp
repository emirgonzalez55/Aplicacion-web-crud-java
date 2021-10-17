<%@ include file="base/base.jsp" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="SQL.ConexionBD"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%    
    Connection conexion = null;
    Statement sentenciaPreparada = null;
    ResultSet resultado = null;

%>
<% 
    String busqueda = request.getParameter("consulta");
    if(busqueda!=null){
        conexion = ConexionBD.conectar();
        sentenciaPreparada = conexion.createStatement();
        resultado = sentenciaPreparada.executeQuery("SELECT * FROM procesadores WHERE marca LIKE"+"'%"+busqueda+"%' OR modelo LIKE"+"'%"+busqueda+"%' UNION SELECT * FROM graficas WHERE marca LIKE"+"'%"+busqueda+"%' OR modelo LIKE"+"'%"+busqueda+"%' UNION SELECT * FROM chipsets WHERE marca LIKE"+"'%"+busqueda+"%' OR modelo LIKE"+"'%"+busqueda+"%'" );
        request.setAttribute("mensaje", "Resultados de la busqueda.");
    }else {
        request.setAttribute("mensaje", "No hay resultados que coincidan con la busqueda");
    }
%>    
<!doctype html>
<head>
    <title>consulta</title>
</head>

<body>
    <h1 class="Tablas">   
      ${mensaje}</h1>
     <main>

    <table class='col-md-3 themed-estilo-col' style='border: solid 1px black;'>
        <tr>
            <th>ID</th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Rendimiento</th>
        </tr>
        <%
          if(resultado!=null)
            while (resultado.next()) {


        %>

        <tr>
            <td class='col-md-3 themed-styles-col'><%= resultado.getString(1)%></td>
            <td class='col-md-3 themed-styles-col'><%= resultado.getString(2)%></td>
            <td class='col-md-3 themed-styles-col'><%= resultado.getString(3)%></td>
            <td class='col-md-3 themed-styles-col'><%= resultado.getString(4)%></td>                                                                         

        </tr>


        <%}%>

    </table>
</body> 
</html>						