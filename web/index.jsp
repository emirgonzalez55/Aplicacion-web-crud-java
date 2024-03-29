<!doctype html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link href="css/styles.css" rel="stylesheet">

  </head>
  
  <body class="text-center">
    
<main class="form-signin">
  <form action="InciarSesion" method="POST" >
    <img class="mb-4" src="img/login.png" alt="" width="100" height="100">
    <h1 class="h3 mb-3 fw-normal">Inciar sesion</h1>
    <a href="registrar.jsp">Registrarse
      <br>
      <br>
    </a>

    <div class="form-floating">
      <input type="text" name ="nombre" pattern="[A-Za-z0-9_-]{4,8}" required class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">Nombre de usuario</label>
    </div>
    <div class="form-floating">
      <input type="password" name="password" pattern="[A-Za-z0-9_-]{4,8}" required class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Contraseņa</label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" name="accion" value="Inciar" type="submit">Inciar sesion</button>
   <main class="mensaje">   
      <p>${mensaje}</p>   
    <main>

  </form>
</main>


    
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp">CPUS</a>
    <ul class="navbar-nav me-auto mb-2 mb-md-0">
      </ul>
      <a  class="btn btn-primary" id="boton">Modo oscuro</a> 
      </ul>
    </div>
  </div>
</nav>

<%@ include file="base/js.jsp" %>
</body>

</html>
