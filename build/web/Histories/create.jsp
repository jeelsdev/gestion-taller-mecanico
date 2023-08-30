<%-- 
    Document   : create
    Created on : 30 ago. 2023, 00:56:19
    Author     : User
--%>
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
        <h2 class="pt-2">Crear Historial</h2>
        <form action="histories?action=insert" method="POST" autocomplete="off">
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example1">Nombre del cliente</label>
                <select class="form-select" name="documentType" id="form6Example2" aria-label="Default select example">
                        <option value="">--Seleccionar--</option>
                        <c:forEach var="user" items="${listUsers}">
                            <option value="${user.idUser}">${user.nameBusiness}</option>
                        </c:forEach>
                  </select>
              </div>
            </div>
          </div>
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Vehiculo</label>
                 <select class="form-select" name="documentType" id="form6Example2" aria-label="Default select example">
                    <option value="DNI">DNI</option>
                    <option value="Carnet">Carnet</option>
                  </select>
              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Servicio</label>
                <select class="form-select" name="documentType" id="form6Example2" aria-label="Default select example">
                    <option value="DNI">DNI</option>
                    <option value="Carnet">Carnet</option>
                  </select>
              </div>
            </div>
          </div>
          
          <button type="submit" class="btn btn-primary btn-block mb-4">Guardar</button>
          <a href="histories" class="btn btn-secondary btn-block mb-4">Cancelar</a>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>

</html>


