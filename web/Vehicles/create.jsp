<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
 if(session.getAttribute("admin") != null){
    
 %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Taller mecanico</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../assets/img/machanicalicon.png" rel="icon">
  <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="./../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="../assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Aug 30 2023 with Bootstrap v5.3.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <jsp:include page="../layaout/navigation.html"/>
    

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Crear vehiculo</h1>
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
                    <option value="1">--seleccionar--</option>
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
                    <option value="taxi">--seleccionar</option>
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
                    <option value="toyota">--selecionar</option>
                    <option value="toyota">Toyota</option>
                    <option value="mercedes">Mercedes</option>
                    <option value="suzuki">Suzuki</option>
                    <option value="honda">Honda</option>
                    <option value="maxda">Maxda</option>
                    <option value="sudary">Sudary</option>
                    <option value="tata">Tata</option>
                    <option value="tesla">Tesla</option>
                    <option value="volkwagen">Volkwagen</option>
                    <option value="geely">Geely</option>
                    <option value="ford">Ford</option>
                </select>
              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Modelo</label>
                <input type="text" id="form6Example2" class="form-control" name="model" value="" required />
              </div>
            </div>
          </div>
          
            <div class="row mb-4">
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">Placa</label>
                 <input type="text" id="form6Example2" class="form-control" name="plate" value="" required />

              </div>
            </div>
            <div class="col">
              <div class="form-outline">
                <label class="form-label" for="form6Example2">KM</label>
                <input type="number" id="form6Example2" class="form-control" name="km" value="" required />
              </div>
            </div>
          </div>            
            <div class="row mb-4">
            <div class="col">
              <div class="form-floating">
                  <textarea class="form-control" name="history" placeholder="Leave a comment here" id="floatingTextarea" style="height: 10rem"></textarea>
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

   
  <!-- Vendor JS Files -->
  <script src="./../assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="./../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./../assets/vendor/chart.js/chart.umd.js"></script>
  <script src="./../assets/vendor/echarts/echarts.min.js"></script>
  <script src="./../assets/vendor/quill/quill.min.js"></script>
  <script src="./../assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="./../assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="./../assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="./../assets/js/main.js"></script>
  
  
</body>

</html>


<%
    
    } else{
    response.sendRedirect("./../index.jsp");
}
%>