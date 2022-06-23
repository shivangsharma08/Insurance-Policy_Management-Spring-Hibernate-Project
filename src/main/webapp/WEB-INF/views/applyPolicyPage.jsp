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
      action="http://localhost:8080/Insurance-Management/applyPolicy/${cid}"
      modelAttribute="customerPolicyObject"
    >
      <div
        class="text-center mx-auto my-4 border border-1 bg-white"
        style="width: 600px"
      >
        <h2 class="display-5 mb-5">Provide Policy Details</h2>
        
        <div class="mb-3">
          <label
            >Policy Name
            <form:input
              type="text"
              path="policy_name"
              class="form-control"
              style="width: 18rem"
            />
          </label>
        </div>
        <div class="mb-3">
          <label
            >Sum Assured Needed
            <form:input
              type="text"
              path="sum_assured_needed"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>

        <div class="mb-3">
          <label
            >No of Years
            <form:input
              type="text"
              path="no_of_years"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>
        <div class="mb-3">
          <label
            >Premium Payment Cycle
            <form:select
              name="premium_payment_cycle"
              id="premium_payment_cycle"
              class="form-control"
              style="width: 18rem"
              path="premium_payment_cycle"
            >
              <option value="Select">Select</option>
              <option value="Monthly">Monthly</option>
              <option value="Quarterly">Quarterly</option>
              <option value="Annual">Annual</option>
            </form:select>
          </label>
        </div>

        <div class="mb-3">
          <button name="subm" class="btn btn-primary" type="submit">
            Apply for Policy
          </button>
        </div>
      </div>
    </form:form>
  </body>
</html>
