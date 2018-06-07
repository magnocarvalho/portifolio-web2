<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Register</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="/style.css" type="text/css">
    </head>

    <body>
        <c:if test="${not empty param.language}">
            <fmt:setLocale value="${param.language}" scope="session"/>
        </c:if>
        <nav class="navbar navbar-expand-lg navbar-light bg-light d-flex">
            <div class="p-1 mr-auto">
               
            </div>           
            <div class="p-1 ml-auto d-flex">
                <div class="m-1">
                  <a href="/register?language=pt-br">
                      <img src="${pageContext.servletContext.contextPath}/assets/img/brazil.png">
                  </a>
                  <a href="/register?language=en">
                      <img src="${pageContext.servletContext.contextPath}/assets/img/usa.png">
                  </a>   
                </div>
                <a type="button" class="btn btn-group" 
                style="color: white; font-weight: bold; margin-left: 20px"><fmt:message key="SIGNIN"/></a>
            </div>           
        </nav>
        <div class="container">
            <h1><fmt:message key="PHOTOMANAGEMENT"/></h1>
            <div class="row">
                <div class="col-md-6">
                    <form action="/register" method="post" class="form-horizontal">
                        <fieldset>
                            <legend><fmt:message key="SIGNUP"/></legend>
                            <c:if test="${cookie.containsKey('message')}">
                                <div class="alert alert-danger">${hasError}</div>
                            </c:if>
                            <div class="form-group">
                                <label for="name"><fmt:message key="NAME"/></label>
                                <input type="text" name="name" id="name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="email"><fmt:message key="EMAIL"/></label>
                                <input type="text" name="email" id="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password"><fmt:message key="PASSWORD"/></label>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="confirm-password"><fmt:message key="CONFIRMPASSWORD"/></label>
                                <input type="password" name="confirm-password" id="confirm-password" class="form-control">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary"><fmt:message key="REGISTER"/></button>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="col-md-6">
                    <div class="logo">
                        <img src="/assets/img/logo.png" height="200px">
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>