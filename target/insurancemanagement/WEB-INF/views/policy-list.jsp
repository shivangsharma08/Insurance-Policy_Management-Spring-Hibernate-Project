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
  <body class="container p-5 bg-light">
  <h2 class="text-center mt-3 mb-5">POLICY SCHEMES AVAILABLE</h2>
    <table class="table">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Scheme Number</th>
          <th scope="col">Policy Name</th>
          <th scope="col">Policy Type</th>
          <th scope="col">Maximum No Of Years</th>
          <th scope="col">Premium Rate Per Year Per Lakh</th>
          <th scope="col">Maximum Sum Assured</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="c" items="${policies}" varStatus="status">
          <tr>
            <th scope="row">${status.count}</th>
            <td>${c.getScheme_number()}</td>
            <td>${c.getPolicy_name()}</td>
            <td>${c.getPolicy_type()}</td>
            <td>${c.getMax_no_of_years()}</td>
            <td>${c.getPremium_rate()}</td>
            <td>${c.getMax_sum_assured()}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </body>
</html>
