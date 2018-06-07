<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Make an album</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" 
              integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
              crossorigin="anonymous">
        <link rel="stylesheet" href="/style.css" type="text/css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" 
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" 
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" 
        crossorigin="anonymous"></script>
    </head>
    <body>
        <c:if test="${not empty param.language}">
           <fmt:setLocale value="${param.language}" scope="session"/>
        </c:if>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">WebImage</a>
            <button class="navbar-toggler" type="button" 
            data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
             <div class="m-1">
              <a href="/albums/create?language=pt-br">
                  <img src="${pageContext.servletContext.contextPath}/assets/img/brazil.png">
              </a>
              <a href="/albums/create?language=en">
                  <img src="${pageContext.servletContext.contextPath}/assets/img/usa.png">
              </a>   
            </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/albums">
                                <fmt:message key="HOME"/> 
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/register">
                                <fmt:message key="REGISTER"/>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/auth">
                                <fmt:message key="LOGOUT"/>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="/albums" 
                            id="navbarDropdown" role="button" 
                            data-toggle="dropdown" aria-haspopup="true" 
                            aria-expanded="false">
                                <fmt:message key="ALBUMS"/>
                            </a>
                            <div class="dropdown-menu" 
                                 aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="/albums/create">
                                    <fmt:message key="NEW"/>
                                </a>
                                <a class="dropdown-item" href="/albums">
                                    <fmt:message key="ALL"/>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        <div class="container">
            <h1><fmt:message key="NEWALBUM"/></h1>
            <p><fmt:message key="MAKENEWALBUM"/></p>
            <form action="/Albums" method="post" class="form" enctype="multipart/form-data">
                <fieldset>
                    <legend><fmt:message key="ALBUMS"/></legend>
                    <div class="form-group">
                        <label for="title"><fmt:message key="TITLE"/></label>
                        <input class="form-control" type="text" name="title" id="title">
                    </div>
                    <div class="form-group">
                        <label for="description"><fmt:message key="DESCRIPTION"/></label>
                        <input class="form-control" type="text" name="description" id="description">
                    </div>
                    <div class="form-group">
                        <label for="cover"><fmt:message key="COVER"/></label>
                        <input class="form-control" type="file" name="cover" id="cover">
                    </div>
                    <legend><fmt:message key="PHOTOS"/></legend>
                    <div class="form-group">
                        <label for="photos"></label>
                        <input class="form-control" type="file" multiple="multiple" name="photos" id="photos">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary"><fmt:message key="SUBMIT"/></button>
                    </div>
                </fieldset>
            </form>
        </div>
    </body>
</html>