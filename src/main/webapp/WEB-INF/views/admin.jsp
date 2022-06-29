<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
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
    <div class="container text-center p-4">
      <h2>Welcome to the Admin's Page</h2>
      <div class="row mt-5">
        <div class="col-lg-3">
          <div class="card" style="width: 18rem">
            <div class="card-body">
              <h5 class="card-title">Add Policy Scheme</h5>
              <p class="card-text p-3">
                Add a new policy scheme for ANAMIKA life insurance.
              </p>
              <a href="addPolicyPage" class="btn btn-primary"
                >Add Policy Page</a
              >
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="card" style="width: 18rem">
            <div class="card-body">
              <h5 class="card-title">View All Policy Schemes</h5>
              <p class="card-text p-3">
                View all the policy schemes available with ANAMIKA life
                insurance.
              </p>
              <a href="viewAllPolicyPage" class="btn btn-primary"
                >View All Policy Schemes Page</a
              >
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="card" style="width: 18rem">
            <div class="card-body">
              <h5 class="card-title">Add Customer</h5>
              <p class="card-text p-3">
                Add a new customer in ANAMIKA life insurance.
              </p>
              <a href="addCustomerPage" class="btn btn-primary"
                >Add Customer Page</a
              >
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="card" style="width: 18rem">
            <div class="card-body">
              <h5 class="card-title">View Policies for Customer</h5>
              <p class="card-text p-3">
                Display all the policies for a given customer.
              </p>
              <a href="customerPolicyPage" class="btn btn-primary"
                >Display Policies For Customer Page</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <footer class="bg-dark text-white text-center text-lg-start p-3 fixed-bottom">
    <div class="text-center p-3">2022 Copyright: Shivang Sharma</div>
  </footer>
</html>
