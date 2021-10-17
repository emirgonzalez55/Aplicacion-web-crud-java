<%@ include file="base/base.jsp" %>
<!doctype html>
  <head>

    <title>Inicio</title>
  </head>
  <body>
    



<main class="container">   
  <h1>Bienvenid@ 
      <br>
      <%=request.getSession().getAttribute("nombre")%> </h1>

  <p class="lead">Esta aplicacion web permite el acceso a una base de datos de hardware 
      <br>
      Haga click en el siguiente boton para visualizar algunos datos.
    </p>
    <a class="btn btn-lg btn-primary" href="procesadores.jsp" role="button">Ver datos</a>
  </div>
</main>
</html>

