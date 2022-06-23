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
    <div class="container p-5">
      <c:forEach var="c" items="${policyDetailsObject}">
        <div class="card">
          <div class="card-body">
            <div class="row">
              <div class="col-6 fw-bold">Scheme Number</div>
              <div class="col-6">${c.getScheme_number()}</div>
            </div>
            <div class="row">
              <div class="col-6 fw-bold">Policy Name</div>
              <div class="col-6">${c.getPolicy_name()}</div>
            </div>
            <div class="row">
              <div class="col-6 fw-bold">Policy Type</div>
              <div class="col-6">${c.getPolicy_type()}</div>
            </div>
            <div class="row">
              <div class="col-6 fw-bold">Maximum No of Years</div>
              <div class="col-6">${c.getMax_no_of_years()}</div>
            </div>
            <div class="row">
              <div class="col-6 fw-bold">Premium Rate</div>
              <div class="col-6">${c.getPremium_rate()}</div>
            </div>
            <div class="row">
              <div class="col-6 fw-bold">Maximum Sum Assured</div>
              <div class="col-6">${c.getMax_sum_assured()}</div>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </body>
</html>
