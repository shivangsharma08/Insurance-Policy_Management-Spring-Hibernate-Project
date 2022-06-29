<html>
  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

    <div class="container text-center bg-light">
      <form action="http://localhost:8080/Insurance-Management2/authenticate">
        <div class="card mx-auto mt-5 border-2" style="width: 600px">
          <h2 class="card-title mb-3">User Login</h2>
          <div class="card-body">
            <div class="mb-3">
              <label for="uname" class="fs-4"
                >Username<input
                  id="uname"
                  name="uname"
                  class="form-control"
                  type="text"
                  placeholder="Enter Username"
                  style="width: 18rem"
              /></label>
            </div>
            <div class="mb-3 fs-4">
              <label for="pwd"
                >Password<input
                  id="pwd"
                  name="pwd"
                  class="form-control"
                  type="password"
                  placeholder="Enter Password"
                  style="width: 18rem"
              /></label>
            </div>
            <div class="mb-3">
              <button id="loginBtn" class="btn btn-primary">Login</button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
