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
    if (busqueda != null) {
        conexion = ConexionBD.conectar();
        sentenciaPreparada = conexion.createStatement();
        resultado = sentenciaPreparada.executeQuery("SELECT * FROM procesadores WHERE marca LIKE" + "'%" + busqueda + "%' OR modelo LIKE" + "'%" + busqueda + "%' UNION SELECT * FROM graficas WHERE marca LIKE" + "'%" + busqueda + "%' OR modelo LIKE" + "'%" + busqueda + "%' UNION SELECT * FROM chipsets WHERE marca LIKE" + "'%" + busqueda + "%' OR modelo LIKE" + "'%" + busqueda + "%'");

        if (resultado.next()) {
            request.setAttribute("mensaje", "Resultados de la busqueda.");
        } else {
            request.setAttribute("mensaje", "No hay resultados que coincidan con la busqueda");
        }
    } else {
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
        
    <div class="table-responsive">
	<table id="tematable" class="table table-striped table-bordered table-hover ">
            <%
            if (busqueda != null) {
                if (resultado.next() == true){
            %> 
            <tr>
                <th>ID</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Rendimiento</th>
            </tr>
            <%}
            }%>
            
            <%
                if (resultado != null)
                    while (resultado.next()) {
            %>
            <tr>
                <td class='col-md-1'><%= resultado.getString(1)%></td>
                <td class='col-md-3'><%= resultado.getString(2)%></td>
                <td class='col-md-3'><%= resultado.getString(3)%></td>
                <td class='col-md-3'><%= resultado.getString(4)%></td>                                                                         

            </tr>
            <%}%>

        </table>
    </div>
<%@ include file="base/js.jsp" %>            
</body> 
</html>						