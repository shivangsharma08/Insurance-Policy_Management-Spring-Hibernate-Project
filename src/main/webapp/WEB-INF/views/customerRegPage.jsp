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
        action="http://localhost:8080/Insurance-Management2/addCustomer"
        modelAttribute="customerObject"
      >
        <div
          class="text-center mx-auto my-4 border border-1 bg-white"
          style="width: 600px"
        >
          <h2 class="display-5 mb-5">Customer Details Form</h2>

          <div class="mb-3">
            <label
              >Customer Name
              <form:input
                type="text"
                path="customer_name"
                class="form-control"
                style="width: 18rem"
              />
              <form:errors path="customer_name" cssClass="text-danger" />
            </label>
          </div>

          <div class="mb-3">
            <label
              >Username
              <form:input
                type="text"
                path="username"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="username"
                cssClass="text-danger"
            /></label>
          </div>

          <div class="mb-3">
            <label
              >Password
              <form:input
                type="password"
                path="password"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="password"
                cssClass="text-danger"
            /></label>
          </div>

          <div class="mb-3">
            <label
              >Customer Age
              <form:input
                type="text"
                path="customer_age"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="customer_age"
                cssClass="text-danger"
            /></label>
          </div>
          <div class="mb-3">
            <label
              >Customer Gender
              <form:select
                name="gender"
                id="gender"
                class="form-control"
                style="width: 18rem"
                path="customer_gender"
              >
                <option value="Select">Select</option>
                <option value="M">Male</option>
                <option value="F">Female</option> </form:select
              ><form:errors path="customer_gender" cssClass="text-danger"
            /></label>
          </div>
          <div class="mb-3">
            <label
              >Customer Address
              <form:input
                type="text"
                path="customer_address"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="customer_address"
                cssClass="text-danger"
            /></label>
          </div>

          <div class="mb-3">
            <label
              >Customer Phone No
              <form:input
                type="text"
                path="customer_phoneno"
                class="form-control"
                style="width: 18rem" /><form:errors
                path="customer_phoneno"
                cssClass="text-danger"
            /></label>
          </div>

          <div class="mb-3">
            <button name="subm" class="btn btn-primary" type="submit">
              Register
            </button>
          </div>
        </div>
      </form:form>
    </div>
  </body>
</html>
