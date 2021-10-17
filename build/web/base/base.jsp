<%-- 
    Document   : base
    Created on : Oct 10, 2021, 8:27:19 PM
    Author     : Emir Gonzalez
--%>

<!doctype html>
  <head>
      <% if(session.getAttribute("nombre")== null ){
          response.sendRedirect("index.jsp");
      }        
      %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link href="css/styles.css" rel="stylesheet">
  </head>
    
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="inicio.jsp">CPUS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <a class="nav-link active" href='inicio.jsp' aria-current="page" href="#">Inicio</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="procesadores.jsp">Procesadores</a>  
        </li>
        <li class="nav-item">
          <a class="nav-link" href="graficas.jsp">Tarjetas gráficas</a>  
        </li>
        <li class="nav-item">
          <a class="nav-link" href="chipsets.jsp">Chipsets</a>  
        </li>
      </ul>
      <form class="d-flex" action="consultasmutiples.jsp" method="POST" >

        <input type="search" required name ="consulta" class="form-control me-2 Search " id="floatingInput" placeholder="Buscar">
        <button class="btn btn-outline-success buscar" type="submit">Buscar</button>>
      </form>
      </ul>
      </ul>
      <li class="nav-item dropdown navbar-nav"> 
            <a class="nav-link dropdown-toggle active "  href="#" id="dropdown01" data-bs-toggle="dropdown" aria-expanded="false"><%=request.getSession().getAttribute("nombre")%></a>
            <ul class="dropdown-menu dropdown-menu-dark dropdown-menu-lg-end " aria-labelledby="dropdown01">
              <li><a class="dropdown-item" href="" id="boton">Modo oscuro</a></li>
              <li><a class="dropdown-item active" action="Cerrarsesion" href="Cerrarsesion" >Cerrar sesion</a></li>
            </ul>
          </li>
    </div>
  </div>   
</nav>

 <body>
    <script src="css/modo.js"></script>
    <script src="css/bootstrap.bundle.min.js"></script>
</body>
</html>
