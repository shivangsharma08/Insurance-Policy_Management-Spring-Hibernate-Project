<html>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <head>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand">Insurance Policy Management</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse p-2" id="navbarNav">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0 fs-5"></ul>
          <div class="d-flex navbar-nav fs-5">
            <li class="nav-item">
              <a
                class="nav-link active text-warning"
                aria-current="page"
                href="http://localhost:8080/Insurance-Management2/"
              >
                Home
              </a>
            </li>
            <li class="nav-item">
              <a
                class="nav-link active"
                aria-current="page"
                href="http://localhost:8080/Insurance-Management2/userLogin"
                >Customer</a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link active"
                aria-current="page"
                href="http://localhost:8080/Insurance-Management2/adminLogin"
              >
                Admin
              </a>
            </li>
          </div>
        </div>
      </div>
    </nav>

    <div class="container p-5">
      <h2 class="text-center mb-5">POLICY DETAILS</h2>
      <c:forEach var="c" items="${policyDetailsObject}">
        <div class="card">
          <div class="card-body p-5 fs-5">
            <div class="row mb-2">
              <div class="col-6 fw-bold text-end">Scheme Number :</div>
              <div class="col-6">${c.getScheme_number()}</div>
            </div>
            <div class="row mb-2">
              <div class="col-6 fw-bold text-end">Policy Name :</div>
              <div class="col-6">${c.getPolicy_name()}</div>
            </div>
            <div class="row mb-2">
              <div class="col-6 fw-bold text-end">Policy Type :</div>
              <div class="col-6">${c.getPolicy_type()}</div>
            </div>
            <div class="row mb-2">
              <div class="col-6 fw-bold text-end">Maximum No of Years :</div>
              <div class="col-6">${c.getMax_no_of_years()}</div>
            </div>
            <div class="row mb-2">
              <div class="col-6 fw-bold text-end">Premium Rate :</div>
              <div class="col-6">${c.getPremium_rate()}</div>
            </div>
            <div class="row mb-2">
              <div class="col-6 fw-bold text-end">Maximum Sum Assured :</div>
              <div class="col-6">${c.getMax_sum_assured()}</div>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </body>
</html>
