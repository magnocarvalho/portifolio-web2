<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Login</title>
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
                  <a href="/login?language=pt-br">
                      <img src="${pageContext.servletContext.contextPath}/assets/img/brazil.png">
                  </a>
                  <a href="/login?language=en">
                      <img src="${pageContext.servletContext.contextPath}/assets/img/usa.png">
                  </a>   
                </div>
                <a type="button" class="btn btn-group" 
                style="color: white; font-weight: bold; margin-left: 20px"><fmt:message key="SIGNUP"/></a>
            </div>           
        </nav>
        <div class="container">
            <h1><fmt:message key="PHOTOMANAGEMENT" /></h1>
            <div class="row">
                <div class="col-md-6">
                    <form action="/Auth" method="post" class="form-horizontal">
                        <fieldset>
                            <legend><fmt:message key="SIGNIN"/></legend>
                            <c:if test="${!hasMessage.equals('')}">
                            <div class="alert alert-info">${hasMessage}</div>
                            </c:if>
                            <div class="form-group">
                                <label for="email"><fmt:message key="EMAIL" /></label>
                                <input type="text" name="email" id="email" class="form-control" value="${hasErrorEmail}">
                            </div>
                            <div class="form-group">
                                <label for="password"><fmt:message key="PASSWORD" /></label>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary"><fmt:message key="LOGIN" /></button>
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