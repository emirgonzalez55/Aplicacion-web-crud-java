<%@ include file="base/base.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="SQL.ConexionBD"%>

<%
    String id = request.getParameter("id");
    String marca = request.getParameter("marca");
    String modelo= request.getParameter("modelo");
    String rendimiento= request.getParameter("rendimiento");
%>
<!DOCTYPE html>
<html>
<head>
	<title>editar gpu</title>
</head>
<body>
    
<main class="form-signin text-center">
  <form action="editargpu.jsp" method="GET" >
    <img class="mb-4" src="img/cpus.png" alt="" width="100" height="80">
    <h1 class="h3 mb-3 fw-normal">Editar gpu</h1>
    <br>
    <div class="form-floating">
      <input type="text" required id="marca" name="marca" class="form-control"  value="<%= marca%>" id="floatingInput" placeholder="">
      <label for="floatingInput">Marca</label>
    </div>
    <br>
    <div class="form-floating">
      <input type="text" required id="modelo" name="modelo"class="form-control" value="<%=modelo%>" id="floatingPassword" placeholder="">
      <label for="floatingPassword">Modelo</label>
    </div>
    <br>
    <div class="form-floating">
      <input type="number" required  id="rendimiento" name="rendimiento"class="form-control" value="<%= rendimiento%>" id="floatingPassword" placeholder="">
      <label for="floatingPassword">Rendimiento</label>
    </div>
    <br>
    <button class="w-100 btn btn-lg btn-primary" name="modificar"  type="submit" >Modificar</button>
    <input type="hidden" name="id" value="<%=id%>" >
  </form>
  
    <%
        if (request.getParameter("modificar") != null) {
            try {
                Connection conexion = null;
                Statement sentenciaPreparada = null;

                conexion = ConexionBD.conectar();
                sentenciaPreparada = conexion.createStatement();
                sentenciaPreparada.executeUpdate("UPDATE graficas SET marca='" + marca + "',modelo='" + modelo + "',rendimiento='" + rendimiento + "' WHERE id='" + id + "';");
                request.getRequestDispatcher("graficas.jsp").forward(request, response);
                } catch (Exception e) {
                    out.print(e);
                }
        }


    %>

</body>
</html>