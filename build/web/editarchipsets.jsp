<%@ include file="base/base.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="SQL.ConexionBD"%>

<%
    if(request.getParameter("id") == null || request.getParameter("marca") == null || request.getParameter("modelo") == null || request.getParameter("rendimiento") == null){
        response.sendRedirect("chipsets.jsp");

    }
    String id = request.getParameter("id");
    String marca = request.getParameter("marca");
    String modelo= request.getParameter("modelo");
    String rendimiento= request.getParameter("rendimiento");
%>
<!DOCTYPE html>
<html>
<head>
	<title>editar chipset</title>
</head>
<body>
    
<main class="form-hardware text-center">
  <form action="editarchipsets.jsp" method="POST" >
    <img class="mb-4" src="img/cpus.png" alt="" width="100" height="80">
    <h1 class="h3 mb-3 fw-normal">Editar chipset</h1>
    <div class="form-floating">
      <input type="text" required id="marca" name="marca" class="form-control"  value="<%= marca%>" id="floatingInput" placeholder="">
      <label for="floatingInput">Marca</label>
    </div>
    <div class="form-floating">
      <input type="text" required id="modelo" name="modelo"class="form-control" value="<%=modelo%>" id="floatingPassword" placeholder="">
      <label for="floatingPassword">Modelo</label>
    </div>
    <div class="form-floating">
      <input type="number" required  id="rendimiento" name="rendimiento"class="form-control" value="<%= rendimiento%>" id="floatingPassword" placeholder="">
      <label for="floatingPassword">Rendimiento</label>
    </div>
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
                sentenciaPreparada.executeUpdate("UPDATE chipsets SET marca='" + marca + "',modelo='" + modelo + "',rendimiento='" + rendimiento + "' WHERE id='" + id + "';");
                response.sendRedirect("chipsets.jsp");
                } catch (Exception e) {
                    out.print(e);
                }
        }


    %>
<%@ include file="base/js.jsp" %>
</body>
</html>