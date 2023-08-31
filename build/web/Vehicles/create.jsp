<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../layaout/navigation.html"/>

    

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Craer vehiculo</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Vehiculo</h5>
              <form action="vehicles?action=insert" method="POST" autocomplete="off">        
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Propietario</label>
                 <select class="form-select" name="idUser" id="form6Example2" aria-label="Default select example">
                    <option value="0">--seleccionar--</option>
                    <c:forEach var="user" items="${listUsers}">                        
                        <option value="${user.idUser}">${user.nameBusiness}</option>
                    </c:forEach>
                  </select>
              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Tipo de vehiculo</label>
                <select class="form-select" name="typeVehicle" id="form6Example2" aria-label="Default select example">
                    <option value="0">--seleccionar</option>
                    <option value="taxi">Taxi</option>
                    <option value="particular">Particular</option>
                  </select>
              </div>
            </div>
          </div>
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Marca</label>
                <select class="form-select" name="brand" id="form6Example2" aria-label="Default select example">
                    <option value="0">--selecionar</option>
                    <option value="toyota">Toyota</option>
                    <option value="mercedes">Mercedes</option>
                </select>
              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Modelo</label>
                <input type="text" id="form6Example2" class="form-control" name="model" value=""/>
              </div>
            </div>
          </div>
          
            <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Placa</label>
                 <input type="text" id="form6Example2" class="form-control" name="plate" value=""/>

              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">KM</label>
                <input type="number" id="form6Example2" class="form-control" name="km" value=""/>
              </div>
            </div>
          </div>            

          <button type="submit" class="btn btn-primary btn-block">Guardar</button>
          <a href="vehicles" class="btn btn-sm btn-outline-secondary">Cancelar</a>
        </form>
            </div>
          </div>

        </div>
      </div>
    </section>

  </main>

    
   <jsp:include page="../layaout/footer.jsp"/>
   
 