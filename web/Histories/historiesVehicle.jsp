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
      <h1>Historial del vehiculo</h1>
      
    </div>

    <section class="section profile">
      <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

              <h2>Propietario</h2>
              <h3>datos del propietario</h3>
            </div>
          </div>

        </div>

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  <h5 class="card-title">Hitorial</h5>
                  <p class="small fst-italic">iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</p>

                  <h5 class="card-title">Detaller del vehiculo</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">Marca</div>
                    <div class="col-lg-9 col-md-8">Ttt</div>
                  </div>

                  

                </div>

               
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

   
   <jsp:include page="../layaout/footer.jsp"/>