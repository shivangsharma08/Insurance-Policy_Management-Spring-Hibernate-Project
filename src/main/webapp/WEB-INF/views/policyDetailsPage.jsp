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
            <li class="nav-item">
              <a
                class="nav-link active text-danger"
                aria-current="page"
                href="http://localhost:8080/Insurance-Management2/userLogin"
              >
                Logout
              </a>
            </li>
          </div>
        </div>
      </div>
    </nav>

    <div class="container py-5">
      <h2 class="text-center mt-3 mb-5">
        ALL AVAILABLE POLICIES UNDER ANAMIKA
      </h2>

      <div class="row">
        <c:forEach var="c" items="${allpolicies}" varStatus="status">
          <div class="col-6 mb-3">
            <a
              class="card btn btn-outline-primary fs-3"
              href='http://localhost:8080/Insurance-Management2/viewPolicyDetails/<c:out value="${c.getScheme_number()}"/>'
            >
              <div class="card-body py-5">
                <p class="card-text">${c.getPolicy_name()}</p>
              </div>
            </a>
          </div>
        </c:forEach>
      </div>
    </div>
  </body>
</html>
