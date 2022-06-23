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
                href="http://localhost:8080/Insurance-Management/"
              >
                Home
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="text-center">
      <h2>Welcome ${username} to the Customer's Page</h2>
      <div class="row mt-5">
        <div class="col-lg-4">
          <div class="card" style="width: 18rem; margin-left: 50px">
            <div class="card-body">
              <h5 class="card-title">Apply for Policy</h5>
              <p class="card-text p-3">
                Apply for a new policy under ANAMIKA life insurance.
              </p>
              <a href='http://localhost:8080/Insurance-Management/applyPolicyPage/${username}' class="btn btn-primary"
                >Apply Policy Page</a
              >
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card" style="width: 18rem; margin-left: 50px">
            <div class="card-body">
              <h5 class="card-title">Get Premium Paid Statement</h5>
              <p class="card-text p-3">
                Get the premium paid statement after applying for a new policy
                in ANAMIKA.
              </p>
              <a href="getPremiumPage" class="btn btn-primary"
                >Get Premium Statement Page</a
              >
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="card" style="width: 18rem; margin-left: 50px">
            <div class="card-body">
              <h5 class="card-title">View Policy Details</h5>
              <p class="card-text p-3">
                View the details for a policy under ANAMIKA life insurance.
              </p>
              <a href="viewPolicyDetailsPage" class="btn btn-primary"
                >View Policy Details Page</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>