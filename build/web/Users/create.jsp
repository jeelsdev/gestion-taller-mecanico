<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../layaout/navigation.html"/>

    

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Craer usuario</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Crear</h5>              
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

          <button type="submit" class="btn btn-primary btn-block">Guardar</button>
        </form>
            </div>
          </div>

        </div>
      </div>
    </section>

  </main>

    
   <jsp:include page="../layaout/footer.jsp"/>

