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
      action="http://localhost:8080/insurancemanagement/addCustomer"
      modelAttribute="customerObject"
    >
      <div
        class="text-center mx-auto my-4 border border-1 bg-white"
        style="width: 600px"
      >
        <h2 class="display-5 mb-5">Customer Id</h2>
        <div class="mb-3">
          <label
            >Customer Id
            <form:input
              type="text"
              path="customer_id"
              class="form-control"
              style="width: 18rem"
            />
          </label>
        </div>
        <div class="mb-3">
          <label
            >Customer Name
            <form:input
              type="text"
              path="customer_name"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>

        <div class="mb-3">
          <label
            >Customer Age
            <form:input
              type="text"
              path="customer_age"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>
        <div class="mb-3">
          <label
            >Customer Gender
            <form:input
              type="text"
              path="customer_gender"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>
        <div class="mb-3">
          <label
            >Customer Address
            <form:input
              type="text"
              path="customer_address"
              class="form-control"
              style="width: 18rem"
          /></label>
        </div>

        <div class="mb-3">
            <label
              >Customer Phone No
              <form:input
                type="text"
                path="customer_phoneno"
                class="form-control"
                style="width: 18rem"
            /></label>
          </div>

        <div class="mb-3">
          <button name="subm" class="btn btn-primary" type="submit">Add Customer</button>
        </div>
      </div>
    </form:form>
  </body>
</html>
