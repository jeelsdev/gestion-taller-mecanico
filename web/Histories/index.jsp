
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../layaout/navigation.html"/>

    

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Lista de historiales</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Historiales</h5>
              <table class="table">
                <thead>
            <tr class="bg-light">
              <th scope="col" width="5%">#</th>
              <th scope="col" width="20%">Nombre</th>
              <th scope="col" width="20%">Marca</th>
              <th scope="col" width="20%">Servicio</th>
              <th scope="col" width="10%">M. pago</th>
              <th scope="col" width="10%">F. entrada</th>
              <th scope="col" width="10%">F. salida</th>
            </tr>
          </thead>
      <tbody>
         <c:forEach var="history" items="${listHistories}">
             <tr>
                <td><c:out value="${history.idHistory}" /></td>
                <td><c:out value="${history.nameUser}" /></td>
                <td><c:out value="${history.brandVehicle}" /></td>
                <td><c:out value="${history.nameService}" /></td>
                <td><c:out value="${history.methodPay}" /></td>
                <td><c:out value="${history.entryDate}" /></td>
                <td><c:out value="${history.outputDate}" /></td>
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



