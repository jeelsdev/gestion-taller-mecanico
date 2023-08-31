<%-- 
    Document   : index
    Created on : 27 ago. 2023, 19:38:30
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../layaout/navigation.html"/>

    

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Lista de usuarios</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Usuarios</h5>
              <table class="table">
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
                    <c:forEach var="user" items="${listUsers}">
                       <tr>
                         <td><c:out value="${user.idUser}" /></td>
                         <td><c:out value="${user.nameBusiness}" /></td>
                         <td><span class="ms-1"><c:out value="${user.documentType}" /></span></td>
                         <td><c:out value="${user.documentNumber}" /></td>
                         <td><c:out value="${user.direction}" /></td>
                         <td><c:out value="${user.phono}" /></td>
                         <td><c:out value="${user.email}" /></td>
                         <td><a href="users?action=edit&id=<c:out value="${user.idUser}" />">
                             <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
             <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
             <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
           </svg>
                             </a></td>
                             <td>
                                 <form action="users?action=delete" method="POST" onsubmit="return confirm('Estas seguro de eliminar el servicio??')">
                                   <input type="hidden" name="idUser" value="<c:out value="${user.idUser}" />">
                                   <button type="submit" class="btn btn-primary"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-archive" viewBox="0 0 16 16">
                                       <path d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1V2zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5H2zm13-3H1v2h14V2zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
                                   </svg>
                                   </button>
                               </form>
                             </td>
                       </tr>
                   </c:forEach>

                 </tbody>
              </table>

            </div>
          </div>

        </div>
      </div>
    </section>

  </main>
       
    
   <jsp:include page="../layaout/footer.jsp"/>
