<%-- 
    Document   : index
    Created on : 27 ago. 2023, 19:38:30
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link d-flex align-items-center" href="/">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                                <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
                              </svg>
                              Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link d-flex align-items-center gx-3" href="Users">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
                                <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
                              </svg>
                            Usuarios</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container mt-5 text-end">
        <a href="Users?action=create" class="btn btn-success">Crear nuevo usuario</a>
    </div>

    <div class="container px-2">
    
        <div class="table-responsive">
        <table class="table table-responsive table-borderless">
            
          <thead>
            <tr class="bg-light">
              <th scope="col" width="10%">#</th>
              <th scope="col" width="20%">Nombre</th>
              <th scope="col" width="12%">Documento</th>
              <th scope="col" width="20%">N° documento</th>
              <th scope="col" width="15%">Dirección</th>
              <th scope="col" width="10%">Teléfono</th>
              <th scope="col" width="20%">Email</th>
              <th scope="col" width="20%"></th>
              <th scope="col" width="20%"></th>
            </tr>
          </thead>
      <tbody>
         <c:forEach var="product" items="${listUsers}">
            <tr>
              <td><c:out value="${product.idUser}" /></td>
              <td><c:out value="${product.nameBusiness}" /></td>
              <td><span class="ms-1"><c:out value="${product.documentType}" /></span></td>
              <td><c:out value="${product.documentNumber}" /></td>
              <td><c:out value="${product.direction}" /></td>
              <td><c:out value="${product.phono}" /></td>
              <td><c:out value="${product.email}" /></td>
              <td><a href="Users?action=edit&id=<c:out value="${product.idUser}" />">Editar</a></td>
              <td><a href="Users?action=edit&id=<c:out value="${product.idUser}" />">Eliminar</a></td>
            </tr>
        </c:forEach>
        
      </tbody>
    </table>
      
      </div>
        
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
