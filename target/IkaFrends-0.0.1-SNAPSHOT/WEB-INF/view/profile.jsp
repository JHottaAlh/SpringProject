<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
<head>
  <title>サンプルです</title>
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="col-md-12 well">
        <h3>user profile</h3>
        <ul>
          <li th:text="${id}">id</li>
          <li th:text="${name}">name</li>
          <li><img th:src="${imageUrl}"></img></li>
        </ul>
        <h3>link</h3>
        <ul>
          <li><a href="/" th:href="@{/}">top</a></li>
        </ul>
      </div>
    </div>
  </div>
</body>
</html>