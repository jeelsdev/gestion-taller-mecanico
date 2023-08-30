<%-- 
    Document   : index
    Created on : 29 ago. 2023, 17:30:27
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    
    
    <div class="container mt-5 text-end">
        <a href="services?action=create" class="btn btn-success">Crear servicio</a>
    </div>

    <div class="container px-2">
    
        <div class="table-responsive">
        <table class="table table-responsive table-borderless">
            
          <thead>
            <tr class="bg-light">
              <th scope="col" width="40%">#</th>
              <th scope="col" width="60%">Nombre</th>
            </tr>
          </thead>
      <tbody>
         <c:forEach var="service" items="${listServices}">
             <tr>
                <td><c:out value="${service.idService}" /></td>
                <td><c:out value="${service.name}" /></td>
                <td>
                    
                    <form action="services?action=delete" method="POST" onsubmit="return confirm('Estas seguro de eliminar este usuario??')">
                        <input type="hidden" name="idService" value="<c:out value="${service.idService}" />">
                        <button type="submit" class="btn btn-primary"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-archive" viewBox="0 0 16 16">
                            <path d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1V2zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5H2zm13-3H1v2h14V2zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
                        </svg>
                        </button>
                    </form>
                    
                    <a href="services?action=delete&id=" >
                     </a>
                </td>
                 
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
