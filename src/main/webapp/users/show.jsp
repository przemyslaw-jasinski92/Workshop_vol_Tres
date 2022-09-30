<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/fragments/header.jsp" %>
<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-2 text-gray-800">UsersCRUD</h1>
    <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Add new user</a>
  </div>

  <!-- Content Row -->

  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">User's details</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
          <div class="col-sm-12">
            <table id="dataTable" class="table table-bordered dataTable" aria-describedby="dataTable_info">
              <thead>
              <tr role="row">
                <th>Id</th>
                <th>User name</th>
                <th>Email</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>${user.id}</td>
                <td>${user.userName}</td>
                <td>${user.email}</td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
<%@ include file="/fragments/footer.jsp" %>
