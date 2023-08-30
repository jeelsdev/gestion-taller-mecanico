<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h2 class="pt-2">Editar datos</h2>
        <form action="users?action=update" method="POST" autocomplete="off" onsubmit="return confirm('Estas serguro de guardar el registro??')">
            <div>
                <input type="hidden" value="${user.idUser}" name="id" id="id">
            </div>
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example1">Nombre / Razon social</label>
                <input type="text" value="${user.nameBusiness}" name="nameBusiness" id="form6Example1" class="form-control"  />
              </div>
            </div>
          </div>
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Tipo de documento</label>
                <select class="form-select" name="documentType" id="form6Example2" aria-label="Default select example">
                    <option value="DNI" ${(user.documentType == "DNI")? "selected": ""} >DNI</option>
                    <option value="Carnet" ${(user.documentType == "Carnet")? "selected": ""} >Carnet</option>
                  </select>
                </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Número de documento</label>
                <input type="text" id="form6Example2" class="form-control" name="documentNumber" value="${user.documentNumber}"/>
              </div>
            </div>
          </div>
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Dirección</label>
                <input type="text" id="form6Example2" class="form-control" name="direction" value="${user.direction}"/>
              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Télefono</label>
                <input type="text" id="form6Example2" class="form-control" name="phono" value="${user.phono}"/>
              </div>
            </div>
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