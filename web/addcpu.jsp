<%@ include file="base/base.jsp" %>
<!doctype html>

  <head>
    <title>nuevo cpu</title>
  </head>
   
<main class="form-hardware text-center">
  <form action="Addcpu" method="POST" >
    <img class="mb-4" src="img/cpus.png" alt="" width="100" height="80">
    <h1 class="h3 mb-3 fw-normal " >Complete el formulario para a�adir un procesador</h1>
    <div class="form-floating">
      <input type="text" pattern=".{1,45}" title="Maximo 45 caracteres" required name ="marca" class="form-control" id="floatingInput" placeholder="">
      <label for="floatingInput">Marca</label>
    </div>
    <div class="form-floating">
      <input type="text" pattern=".{1,45}" title="Maximo 45 caracteres" required name="modelo"class="form-control" id="floatingPassword" placeholder="">
      <label for="floatingPassword">Modelo</label>
    </div>
    <div class="form-floating">
      <input type="number" min="1" max="100" required name="rendimiento"class="form-control" id="floatingPassword" placeholder="">
      <label for="floatingPassword">Rendimiento</label>
    </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">A�adir</button>
    <main class="mensaje">   
      <p>${mensaje}
     <main>


  </form>
</main>
</body>




</html>

  
