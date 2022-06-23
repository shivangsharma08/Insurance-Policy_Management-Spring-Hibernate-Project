<html>
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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark nvbr">
      <div class="container-fluid">
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
          <ul class="navbar-nav fs-5">
            <li class="nav-item">
              <a
                class="nav-link active text-danger"
                aria-current="page"
                href="http://localhost:8080/insurancemanagement/"
              >
                Home
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="text-center">
      <h2>Welcome to the Admin's Page</h2>
      <div class="row mt-5">
        <div class="col-lg-3">
          <div class="card" style="width: 18rem; margin-left: 50px">
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
          <div class="card" style="width: 18rem; margin-left: 50px">
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
          <div class="card" style="width: 18rem; margin-left: 50px">
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
          <div class="card" style="width: 18rem; margin-left: 50px">
            <div class="card-body">
              <h5 class="card-title">View Policies for Customer</h5>
              <p class="card-text p-3">
                Display all the policies for a given customer.
              </p>
              <a
                href="customerPolicyPage"
                class="btn btn-primary"
                >Display Policies For Customer Page</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
