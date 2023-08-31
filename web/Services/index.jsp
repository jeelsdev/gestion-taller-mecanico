
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<jsp:include page="../layaout/navigation.html"/>

    

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Lista de servicios</h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Servicios</h5>
              <table class="table">
                <thead>
                  <tr class="bg-light">
              <th scope="col" width="40%">#</th>
              <th scope="col" width="60%">Nombre</th>
            </tr>
                </thead>
                <tbody>
         <c:forEach var="service" items="${listServices}">
             <tr>
                <td><c:out value="${service.idService}" /></td>
                <td><c:out value="${service.name}" /></td>
                <td>
                    
                    <form action="services?action=delete" method="POST" onsubmit="return confirm('Estas seguro de eliminar este usuario??')">
                        <input type="hidden" name="idService" value="<c:out value="${service.idService}" />">
                        <button type="submit" class="btn btn-primary"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-archive" viewBox="0 0 16 16">
                            <path d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1V2zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5H2zm13-3H1v2h14V2zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
                        </svg>
                        </button>
                    </form>
                    
                    <a href="services?action=delete&id=" >
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

   
