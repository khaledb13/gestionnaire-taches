<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Majestic Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.png" />

  
</head>

<body>

  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <%@ include file="../../partials/_navbar.html" %>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_sidebar.html -->
      <%@ include file="../../partials/_sidebar.html" %>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                    <div style="display:flex; align-items:center; justify-content: space-between; padding-bottom: 20px;">
                        <h2 style="display:flex; align-items:center; justify-content:center">
                          <i class="mdi mdi mdi-comment-multiple-outline menu-icon"style="margin-right: 5px;"></i> Comments</h2>
                          <a href="/app/comment/add" style="text-decoration: none;">
                            <button type="button" class="btn btn-outline-warning btn-inverse-warning btn-rounded btn-icon-text" style="display:flex; align-items:center;">
                                Add
                                <i class="mdi mdi-plus btn-icon-append"></i>                       
                            </button>
                           </a> 
                    </div>
                  <div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th>
                            Id
                          </th>
                          <th>
                            Name
                          </th>
                          <th>
                            Comment
                          </th>
                          <th>
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${list}" var="comment">
                        <tr>
                          <td>${comment.id}</td>
                          <c:if test="${comment.admin!=null}">
                            <td>${comment.admin.name} ${comment.admin.lastName}</td>	
                          </c:if>
                          <c:if test="${comment.visitor!=null}">
                            <td>${comment.visitor.name} ${comment.visitor.lastName}</td>	
                          </c:if>					
                          <td>${comment.text}</td>							
                          <td>
                            <a href="/app/comment/edit/${comment.id}">
                              <button type="button" class="btn btn-inverse-success btn-rounded btn-icon" >
                                  <i class="mdi mdi-pencil"></i>
                                </button>
                            </a>
                            <a href="/app/comment/delete/${comment.id}">
                              <button type="button" class="btn btn-inverse-danger btn-rounded btn-icon">
                                <i class="mdi mdi-delete"></i>
                              </button>
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
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
          <%@ include file="../../partials/_footer.html" %>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="${pageContext.request.contextPath}/vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="${pageContext.request.contextPath}/js/off-canvas.js"></script>
  <script src="${pageContext.request.contextPath}/js/hoverable-collapse.js"></script>
  <script src="${pageContext.request.contextPath}/js/template.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
</body>

</html>



