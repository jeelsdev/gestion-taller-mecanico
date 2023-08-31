<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../layaout/navigation.html"/>

    

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Editar datos del usuario</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Editar</h5>
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
          </div>

        </div>
      </div>
    </section>

  </main>

    
   <jsp:include page="../layaout/footer.jsp"/>
