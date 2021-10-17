<%@ include file="base/base.jsp" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="SQL.ConexionBD"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%
    Connection conexion=null;
    Statement sentenciaPreparada=null;
    ResultSet resultado=null;
    
%>
<!doctype html>
<head>
  <title>graficas</title>
</head>
    
<body>
    <h1 class="Tablas">Listado de Graficas</h1>
    <a class='btn btn-primary boton'  href='addgpu.jsp'>Añadir graficas</a>

		<table class='col-md-3 themed-estilo-col' style='border: solid 1px black;'>
		<tr>
		<th>ID</th>
		<th>Marca</th>
		<th>Modelo</th>
		<th>Rendimiento</th>
		</tr>
                                        <%
                                            

                                         
                                            conexion = ConexionBD.conectar();
                                            sentenciaPreparada=conexion.createStatement();                           
                                            resultado=sentenciaPreparada.executeQuery("SELECT * FROM graficas ");
                                            while(resultado.next()){
                                                
                                            
                                        %>
                
					<tr>
                                                <td class='col-md-3 themed-styles-col'><%= resultado.getString(1)%></td>
						<td class='col-md-3 themed-styles-col'><%= resultado.getString(2)%></td>
						<td class='col-md-3 themed-styles-col'><%= resultado.getString(3)%></td>
                                                <td class='col-md-3 themed-styles-col'><%= resultado.getString(4)%></td>                                                                         
						<td class='col-md-3 themed-styles-col'><a class="btn btn-secondary" href="editargpu.jsp?id=<%= resultado.getString(1)%>&marca=<%= resultado.getString(2)%>&modelo=<%= resultado.getString(3)%>&rendimiento=<%= resultado.getString(4)%>">Editar</a></td>
                                                <td class='col-md-3 themed-styles-col'><a class="btn btn-danger" href="eliminargpu.jsp?id=<%= resultado.getString(1)%>">Eliminar</a></td>
					</tr>

					
				<%}%>
			
		</table>
</body> 
</html>						