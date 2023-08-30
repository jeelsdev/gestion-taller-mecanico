<%-- 
    Document   : create
    Created on : 27 ago. 2023, 19:38:55
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Taller mecanico</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body>

    <jsp:include page="../layaout/navigation.html"/>

    <div class="container">
        <h2 class="pt-2">Crear usuario</h2>
        <form action="users?action=insert" method="POST" autocomplete="off">
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example1">Nombre / Razon social</label>
                <input type="text" value="" name="nameBusiness" id="form6Example1" class="form-control"  />
              </div>
            </div>
          </div>
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Tipo de documento</label>
                 <select class="form-select" name="documentType" id="form6Example2" aria-label="Default select example">
                    <option value="DNI">DNI</option>
                    <option value="Carnet">Carnet</option>
                  </select>
              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Número de documento</label>
                <input type="number" id="form6Example2" class="form-control" name="documentNumber" value=""/>
              </div>
            </div>
          </div>
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Dirección</label>
                <input type="text" id="form6Example2" class="form-control" name="direction" value=""/>
              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Télefono</label>
                <input type="number" id="form6Example2" class="form-control" name="phono" value=""/>
              </div>
            </div>
          </div>
            
          <div class="form-outline mb-4">
            <label class="form-label" for="form6Example3">Email</label>
            <input type="email" name="email" value="" id="form6Example3" class="form-control" />
          </div>

          <button type="submit" class="btn btn-primary btn-block mb-4">Guardar</button>
          <a href="users" class="btn btn-secondary btn-block mb-4">Cancelar</a>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>

</html>

