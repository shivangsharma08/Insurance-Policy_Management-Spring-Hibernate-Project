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
  <body class="bg-light">
    <form action="http://localhost:8080/insurancemanagement/authenticate">
      <div class="card text-center mx-auto my-5 border-2" style="width: 600px">
        <h2 class="card-title display-5 mb-3">Admin Login</h2>
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
            <button class="btn btn-primary">Login</button>
          </div>
        </div>
      </div>
    </form>
  </body>
</html>
