<html>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                href="http://localhost:8080/Insurance-Management2/adminLogin"
              >
                Logout <span class="fs-6">(admin)</span>
              </a>
            </li>
          </div>
        </div>
      </div>
    </nav>

    <div class="bg-light">
      <form:form
        method="post"
        action="http://localhost:8080/Insurance-Management2/addPolicy"
        modelAttribute="policyObject"
      >
        <div
          class="text-center mx-auto my-4 border border-1 bg-white"
          style="width: 600px"
        >
          <h2 class="display-5 mb-5">New Policy Scheme</h2>

          <div class="mb-3">
            <label
              >Policy Name
              <form:input
                type="text"
                path="policy_name"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="policy_name"
                cssClass="text-danger"
            /></label>
          </div>

          <div class="mb-3">
            <label
              >Policy Type
              <form:select
                name="policy_type"
                id="policy_type"
                class="form-control"
                style="width: 18rem"
                path="policy_type"
              >
                <option value="Select">Select</option>
                <option value="Term">Term</option>
                <option value="Money back">Money back</option>
                <option value="Endowment">Endowment</option> </form:select
              ><form:errors path="policy_type" cssClass="text-danger" />
            </label>
          </div>

          <div class="mb-3">
            <label
              >Maximum number of years
              <form:input
                type="text"
                path="max_no_of_years"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="max_no_of_years"
                cssClass="text-danger"
            /></label>
          </div>
          <div class="mb-3">
            <label
              >Premium rate per year per lakh
              <form:input
                type="text"
                path="premium_rate"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="premium_rate"
                cssClass="text-danger"
            /></label>
          </div>
          <div class="mb-3">
            <label
              >Maximum sum assured
              <form:input
                type="text"
                path="max_sum_assured"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="max_sum_assured"
                cssClass="text-danger"
            /></label>
          </div>

          <div class="mb-3">
            <button name="subm" class="btn btn-primary" type="submit">
              Add Policy
            </button>
          </div>
        </div>
      </form:form>
    </div>
  </body>
</html>
