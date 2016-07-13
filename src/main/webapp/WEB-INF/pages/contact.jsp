<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="requestPath" value="${pageContext.servletContext.contextPath}"></c:set>

<div class="row jumbotron">
    <div class="col-md-8">
        <h1>Kupets Entertainment</h1>
        <p class="lead">Пишите мне на <a href="mailto:nkuptsov@gmail.com">nkuptsov@gmail.com</a></p>
        <p class="lead">Skype: un_crow</p>
        <p class="lead">Телефон: +7 960 353 39 14</p>
    </div>
    <div class="col-md-4">
        <img class="img-circle" width="297" height="297" alt="It's me!" src="${requestPath}/resources/img/me.jpg" />
    </div>
</div>