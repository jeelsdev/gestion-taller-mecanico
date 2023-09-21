<%-- 
    Document   : index
    Created on : 27 ago. 2023, 19:38:30
    Author     : User
--%>

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
      <h1>Lista de usuarios</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Usuarios</h5>
              <table class="table datatable">
                <thead>
                  <tr class="bg-light">
                    <th scope="col" width="5%" class="text-center">#</th>
                    <th scope="col" width="15%" class="text-center">Nombre</th>
                    <th scope="col" width="10%" class="text-center">Tipo</th>
                    <th scope="col" width="15%" class="text-center">N° documento</th>
                    <th scope="col" width="15%" class="text-center">Dirección</th>
                    <th scope="col" width="10%" class="text-center">Teléfono</th>
                    <th scope="col" width="30%" class="text-center">Email</th>
                    <th scope="col" width="15%" class="text-center"></th>
                    <th scope="col" width="15%" class="text-center"></th>
                  </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${listUsers}">
                       <tr>
                           <td class="text-center"><c:out value="${user.idUser}" /></td>
                         <td class="text-center"><c:out value="${user.nameBusiness}" /></td>
                         <td class="text-center"><span class="ms-1"><c:out value="${user.documentType}" /></span></td>
                         <td class="text-center"><c:out value="${user.documentNumber}" /></td>
                         <td class="text-center"><c:out value="${user.direction}" /></td>
                         <td class="text-center"><c:out value="${user.phono}" /></td>
                         <td class="text-center"><c:out value="${user.email}" /></td>
                         <td class="d-flex flex-row text-center" style="display: flex"><a href="users?action=edit&id=<c:out value="${user.idUser}" />" class="btn btn-sm btn-primary mx-2">
                             <i class="bi bi-pencil-square"></i>
                             </a>
                                 
                             </td>
                            <td class="d-flex flex-row text-center" style="display: flex">
                                 <form action="users?action=delete" method="POST" onsubmit="return confirm('Estas seguro de eliminar el servicio??')">
                                   <input type="hidden" name="idUser" value="<c:out value="${user.idUser}" />">
                                   <button type="submit" class="btn btn-sm btn-danger"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-archive" viewBox="0 0 16 16">
                                       <path d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1V2zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5H2zm13-3H1v2h14V2zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
                                   </svg>
                                   </button>
                               </form>
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