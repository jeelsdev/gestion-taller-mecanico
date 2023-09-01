<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../layaout/navigation.html"/>

    

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Editar datos del vehiculo</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Editar</h5>
              <form action="vehicles?action=update" method="POST" autocomplete="off">      
                  <input type="hidden" name="id" value="${vehicle.idVehicle}">
          <div class="row mb-4">
            
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Tipo de vehiculo</label>
                <select class="form-select" name="typeVehicle" id="form6Example2" aria-label="Default select example">
                    <option value="0">--seleccionar</option>
                    <option value="taxi" ${vehicle.typeVehicle == 'taxi'?'selected':''}>Taxi</option>
                    <option value="particular" ${vehicle.typeVehicle == 'particular'?'selected':''}>Particular</option>
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
                    <option value="toyota" ${vehicle.brand== 'suzuki'?'selected':''}>Suzuki</option>
                    <option value="toyota" ${vehicle.brand== 'toyota'?'selected':''}>Toyota</option>
                    <option value="mercedes" ${vehicle.brand== 'mercedes'?'selected':''}>Mercedes</option>
                </select>
              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Modelo</label>
                <input type="text" id="form6Example2" class="form-control" name="model" value="${vehicle.model}"/>
              </div>
            </div>
          </div>
          
            <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">KM</label>
                <input type="number" id="form6Example2" class="form-control" name="km" value="${vehicle.km}"/>
              </div>
            </div>
          </div>            
            <div class="row mb-4">
            <div class="col">
              <div class="form-floating">
                  <textarea class="form-control" name="history" placeholder="Leave a comment here" id="floatingTextarea" style="height: 10rem">${vehicle.history}</textarea>
                <label for="floatingTextarea">Historial</label>
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
