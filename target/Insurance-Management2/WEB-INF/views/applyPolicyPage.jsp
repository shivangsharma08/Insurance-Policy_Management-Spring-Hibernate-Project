<html>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> <%@
  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <div class="bg-light">
      <form:form
        method="post"
        action="http://localhost:8080/Insurance-Management2/applyPolicy/${cid}"
        modelAttribute="customerPolicyObject"
      >
        <div
          class="text-center mx-auto my-4 border border-1 bg-white"
          style="width: 600px"
        >
          <h2 class="display-5 mb-5">Provide Policy Details</h2>

          <div class="mb-3">
            <label
              >Policy Name
              <form:select
                name="policies"
                id="policies"
                class="form-control"
                style="width: 18rem"
                path="policy_name"
              >
                <option value="Select">Select Policy</option>
                <c:forEach var="c" items="${polList}">
                  <option value="${c.getPolicy_name()}">
                    ${c.getPolicy_name()}
                  </option>
                </c:forEach>
              </form:select>
            </label>
          </div>
          <div class="mb-3">
            <label
              >Sum Assured Needed
              <form:input
                type="text"
                path="sum_assured_needed"
                class="form-control"
                style="width: 18rem"
            /></label>
          </div>

          <div class="mb-3">
            <label
              >No of Years
              <form:input
                type="text"
                path="no_of_years"
                class="form-control"
                style="width: 18rem"
            /></label>
          </div>
          <div class="mb-3">
            <label
              >Premium Payment Cycle
              <form:select
                name="premium_payment_cycle"
                id="premium_payment_cycle"
                class="form-control"
                style="width: 18rem"
                path="premium_payment_cycle"
              >
                <option value="Select">Select</option>
                <option value="Monthly">Monthly</option>
                <option value="Quarterly">Quarterly</option>
                <option value="Annual">Annual</option>
              </form:select>
            </label>
          </div>

          <div class="mb-3">
            <button name="subm" class="btn btn-primary" type="submit">
              Apply for Policy
            </button>
          </div>
        </div>
      </form:form>
    </div>
  </body>
</html>
