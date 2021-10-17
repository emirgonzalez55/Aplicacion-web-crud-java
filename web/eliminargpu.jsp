<%@page import="SQL.ConexionBD"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection conexion = null;
    Statement sentenciaPreparada = null;
    try {
        conexion = ConexionBD.conectar();
        sentenciaPreparada = conexion.createStatement();
        sentenciaPreparada.executeUpdate("DELETE  FROM graficas WHERE id='" + request.getParameter("id") + "'; ");
        request.getRequestDispatcher("graficas.jsp").forward(request, response);
    } catch (Exception e) {
        out.print(e);

    }


%>