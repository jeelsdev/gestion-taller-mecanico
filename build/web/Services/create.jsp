
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <jsp:include page="../layaout/navigation.html"/>


  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Crear usuario</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Crear</h5>
             <form action="services?action=insert" method="POST" autocomplete="off">
          <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example1">Nombre del servicio</label>
                <input type="text" value="" name="nameService" id="form6Example1" class="form-control"  />
              </div>
            </div>
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
    
 