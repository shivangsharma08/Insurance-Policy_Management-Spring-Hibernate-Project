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
  <div class="container py-5">
    <h2 class="text-center mt-3 mb-5">POLICY DETAILS PAGE</h2>
    
    <div class="row">
      <c:forEach var="c" items="${allpolicies}" varStatus="status">
        <div class="col-6 mb-3">
          <a
            class="card btn btn-outline-primary fs-3 "
            href='http://localhost:8080/insurancemanagement/viewPolicyDetails/<c:out value="${c.getScheme_number()}"/>'
          >
            <div class="card-body">
              <p class="card-text">${c.getPolicy_name()}</p>
            </div>
          </a>
        </div>
      </c:forEach>
    </div>
    </div>
  </body>
</html>
