<%@ include file="base/base.jsp" %>
<!doctype html>

  <head>
    <title>nuevo chipset</title>
  </head>
   
<main class="form-signin text-center">
  <form action="Addchipsets" method="POST" >
    <img class="mb-4" src="img/cpus.png" alt="" width="100" height="80">
    <h1 class="h3 mb-3 fw-normal " >Complete el formulario para a�adir un chipset</h1>
    <br>
    <div class="form-floating">
      <input type="text" required name ="marca" class="form-control" id="floatingInput" placeholder="">
      <label for="floatingInput">Marca</label>
    </div>
    <br>
    <div class="form-floating">
      <input type="text" required name="modelo"class="form-control" id="floatingPassword" placeholder="">
      <label for="floatingPassword">Modelo</label>
    </div>
    <br>
    <div class="form-floating">
      <input type="number" required name="rendimiento"class="form-control" id="floatingPassword" placeholder="">
      <label for="floatingPassword">Rendimiento</label>
    </div>
    <br>
    <button class="w-100 btn btn-lg btn-primary" type="submit">A�adir</button>
    <main class="mensaje">   
      <p>${mensaje}
     <main>


  </form>
</main>
</body>




</html>

  
