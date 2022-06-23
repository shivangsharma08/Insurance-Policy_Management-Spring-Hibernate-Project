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
  <body class="bg-light">
    <form:form
      method="post"
      action="http://localhost:8080/insurancemanagement/addPolicy"
      modelAttribute="policyObject"
    >
      <div
        class="text-center mx-auto my-4 border border-1 bg-white"
        style="width: 600px"
      >
        <h2 class="display-5 mb-5">New Policy Scheme</h2>
        <div class="mb-3">
          <label
            >Scheme Number
            <form:input
              type="text"
              path="scheme_number"
              class="form-control"
              style="width: 18rem"
            />
          </label>
        </div>
        <div class="mb-3">
          <label
            >Policy Name
            <form:input
              type="text"
              path="policy_name"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>

        <div class="mb-3">
          <label
            >Policy Type
            <form:select
              name="flags"
              id="flags"
              class="form-control"
              style="width: 18rem"
              path="policy_type"
            >
              <option value="Select">Select</option>
              <option value="Term">Term</option>
              <option value="Money back">Money back</option>
              <option value="Endowment">Endowment</option>
            </form:select>
          </label>
        </div>

        <div class="mb-3">
          <label
            >Maximum number of years
            <form:input
              type="text"
              path="max_no_of_years"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>
        <div class="mb-3">
          <label
            >Premium rate per year per lakh
            <form:input
              type="text"
              path="premium_rate"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>
        <div class="mb-3">
          <label
            >Maximum sum assured
            <form:input
              type="text"
              path="max_sum_assured"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>

        <div class="mb-3">
          <button name="subm" class="btn btn-primary" type="submit">Add Policy</button>
        </div>
      </div>
    </form:form>
  </body>
</html>
