

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
      <h1>Lista de vehiculos</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Vehiculos</h5>
              <table class="table datatable">
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
                             <i class="bi bi-pencil-square"></i>
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