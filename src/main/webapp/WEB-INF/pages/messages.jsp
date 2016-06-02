<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>

<div class="row jumbotron">
    <!-- Jumbotron -->
    <div class="col-md-8 col-md-push-4">
        <h1><spring:message code="page.title"/></h1>

        <p class="lead"><spring:message code="page.subhead"/></p>

        <p><a class="btn btn-lg btn-success" data-toggle="modal" data-target="#addMessageModal" role="button"><spring:message code="page.button.add"/></a></p>
    </div>
    <div class="col-md-4 col-md-pull-8">
        <img class="img-circle" width="297" height="297" alt="Fhtagn!" src="/resources/img/fhtagn.jpg" />
    </div>
</div>

<hr class="featurette-divider">

<form:form action="messages/add" commandName="message" acceptCharset="UTF-8">
    <!-- Modal -->
    <div class="modal fade" id="addMessageModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"><spring:message code="page.modal.title"/></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="header">Заголовок</label>
                        <form:input path="header" cssClass="form-control" placeholder="Зов Ктулху" />
                    </div>
                    <div class="form-group">
                        <label for="content">Сообщение</label>
                        <form:textarea path="content" rows="5" cssClass="form-control" placeholder="«Пх’нглуи мглв’нафх Ктулху Р’льех вгах’нагл фхтагн», примерный перевод: «В своём доме в Р’льехе мёртвый Ктулху спит, ожидая своего часа» или другая версия перевода: «Нет божества, достойного поклонения, кроме Ктулху, и Р'льех - обитель сна его»." />
                    </div>
                    <div class="form-group">
                        <label for="link">Ссылка на подробности</label>
                        <form:input path="link" cssClass="form-control" placeholder="https://vk.com/club1656650" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-lg btn-success"><spring:message code="page.button.save"/></button>
                    <button type="button" class="btn btn-lg btn-default" data-dismiss="modal"><spring:message code="page.button.close"/></button>
                </div>
            </div>
        </div>
    </div>
</form:form>

<c:forEach items="${messageList}" var="msg" varStatus="loop">
    <c:if test="${loop.index % 3 == 0}">
        <c:if test="${loop.index > 0}">
            </div>
        </c:if>
        <div class="row">
    </c:if>
    <div class="col-lg-4">
        <h2>${msg.header}</h2>

        <p>${msg.content}</p>

        <c:if test="${not empty msg.link}">
            <p><a class="btn btn-primary" href="${msg.link}" role="button"><spring:message code="page.button.more"/> &raquo;</a></p>
        </c:if>
    </div>
</c:forEach>
<c:if test="${not empty messageList}">
    </div>
</c:if>