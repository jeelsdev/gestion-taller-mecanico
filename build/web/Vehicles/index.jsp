

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <jsp:include page="../layaout/navigation.html"/>


  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Lista de vehiculos</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Vehiculos</h5>
              <table class="table">
                <thead>
                  <tr>
                     <th scope="col" width="3%">#</th>
                    <th scope="col" width="10%">Placa</th>
                    <th scope="col" width="15%">Vehiculo</th>
                    <th scope="col" width="12%">Propietario</th>
                    <th scope="col" width="20%">Tipo</th>
                    <th scope="col" width="15%">Modelo</th>
                    <th scope="col" width="20%">KM</th>
                    <th scope="col" width="5%"></th>
                    <th scope="col" width="30%"></th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach var="vehicle" items="${listVehicles}">
                       <tr>
                         <td><c:out value="${vehicle.idVehicle}" /></td>
                         <td><c:out value="${vehicle.plate}" /></td>
                         <td><c:out value="${vehicle.brand}" /></td>
                         <td><span class="ms-1"><c:out value="${vehicle.nameBusiness}" /></span></td>
                         <td><c:out value="${vehicle.typeVehicle}" /></td>
                         <td><c:out value="${vehicle.model}" /></td>
                         <td><c:out value="${vehicle.km}" /></td>
                         <td><a href="vehicles?action=edit&id=<c:out value="${vehicle.idVehicle}" />" class="btn btn-primary">
                             <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
             <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
             <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
           </svg>
                             </a></td>
                             <td class="d-flex align-items-center">
                                 <a href="histories?action=profile&id=<c:out value="${vehicle.idVehicle}" />" class="btn btn-secondary">
                                       <i class="bi bi-collection"></i>
                                 </a>
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
    