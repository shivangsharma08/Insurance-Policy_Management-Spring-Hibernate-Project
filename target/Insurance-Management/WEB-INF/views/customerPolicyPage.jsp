<html>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    
    <script>
         $(document).ready(function () {
            $("#showBtn").click(function () {
              var cid = $("#cid").val();
              $(location).attr(
                "href",
                "http://localhost:8080/Insurance-Management/viewPoliciesForCustomer/" + cid
              );
          });
         });
    </script>
    
  </head>
  <body class="bg-light">
   
      <div
        class="text-center mx-auto my-4 border border-1 bg-white"
        style="width: 600px"
      >
        <h2 class="display-5 mb-5">Policies for the given customer</h2>

        <div class="mb-3">
          <label
            >Customer ID for which you want to show the policies
            <input
              id="cid"
              type="text"
              class="form-control"
              style="width: 18rem"
            />
          </label>
        </div>

        <div class="mb-3">
          <button id="showBtn" name="subm" class="btn btn-primary" type="submit">
            Submit
          </button>
        </div>
      </div>
  
  </body>
</html>
