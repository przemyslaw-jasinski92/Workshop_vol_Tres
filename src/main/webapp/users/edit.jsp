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
      <h6 class="m-0 font-weight-bold text-primary">Edit user</h6>
    </div>
    <div class="card-body">
      <form method="post">
        <div class="mb-3">
          <label>User's name</label>
          <input class="form-control" name="name" type="text" value="${user.userName}">
        </div>
        <div class="mb-3">
          <label>Email address</label>
          <input class="form-control" name="email" type="email" value="${user.email}">
        </div>
        <div class="mb-3">
          <label>Password</label>
          <input class="form-control" name="password" type="password" placeholder="Password...">
        </div>
        <button type="submit" class="d-sm-inline-block btn btn-sm btn-primary">Save changes</button>
      </form>
    </div>
  </div>
  <!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
<%@ include file="/fragments/footer.jsp" %>
