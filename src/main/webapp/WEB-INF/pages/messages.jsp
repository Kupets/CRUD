<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>

<c:set var="requestPath" value="${pageContext.servletContext.contextPath}"></c:set>
<c:url var="servletPath" value="${requestScope['javax.servlet.forward.servlet_path']}"></c:url>

<div class="row jumbotron">
    <!-- Jumbotron -->
    <div class="col-md-8 col-md-push-4">
        <h1><spring:message code="page.title"/></h1>

        <p class="lead"><spring:message code="page.subhead"/></p>

        <p><a class="btn btn-lg btn-success" data-toggle="modal" data-target="#addMessageModal" role="button"><spring:message code="page.button.add"/></a></p>
    </div>
    <div class="col-md-4 col-md-pull-8">
        <img class="img-circle" width="297" height="297" alt="Fhtagn!" src="${requestPath}/resources/img/fhtagn.jpg" />
    </div>
</div>

<hr class="featurette-divider">

<form:form action="${servletPath}/messages/add" commandName="message" acceptCharset="UTF-8">
    <!-- Modal -->
    <div class="modal fade" id="addMessageModal" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"><spring:message code="page.modal.title"/></h4>
                </div>
                <div class="modal-body">
                    <form:hidden path="id"></form:hidden>
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
                    <%--<button type="submit" class="btn btn-lg btn-success"><spring:message code="${message.id != null && message.id != '' ? 'page.button.edit' : 'page.button.add'}"/></button>--%>
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
        <h2>
            <c:choose>
                <c:when test="${not empty msg.link}">
                    <a href="${msg.link}">${msg.header}</a>
                </c:when>
                <c:otherwise>
                    ${msg.header}
                </c:otherwise>
            </c:choose>
        </h2>

        <p>${msg.content}</p>

        <p>
            <a class="btn btn-success" href="${servletPath}/messages/edit/${msg.id}" role="button"><span class="glyphicon glyphicon-pencil"></span></a>&nbsp;&nbsp;
            <a class="btn btn-danger" href="${servletPath}/messages/delete/${msg.id}" role="button"><span class="glyphicon glyphicon-remove"></span></a>
        </p>
    </div>
</c:forEach>
<c:if test="${not empty messageList}">
    </div>
</c:if>

<c:if test="${messagesPage.totalPages > 1}">
    <!-- Paging -->
    <c:set var="firstUrl" value="${servletPath}/messages/1" />
    <c:set var="lastUrl" value="${servletPath}/messages/${messagesPage.totalPages}" />
    <c:set var="prevUrl" value="${servletPath}/messages/${currentIndex - 1}" />
    <c:set var="nextUrl" value="${servletPath}/messages/${currentIndex + 1}" />

    <nav>
        <ul class="pagination pagination-lg">
            <c:choose>
                <c:when test="${currentIndex == 1}">
                    <li class="disabled"><a href="#">&lt;&lt;</a></li>
                    <li class="disabled"><a href="#">&lt;</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${firstUrl}">&lt;&lt;</a></li>
                    <li><a href="${prevUrl}">&lt;</a></li>
                </c:otherwise>
            </c:choose>
            <c:forEach var="i" begin="${beginIndex}" end="${endIndex}">
                <c:set var="pageUrl" value="${servletPath}/messages/${i}" />
                <c:choose>
                    <c:when test="${i == currentIndex}">
                        <li class="active"><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="${pageUrl}"><c:out value="${i}" /></a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:choose>
                <c:when test="${currentIndex == messagesPage.totalPages}">
                    <li class="disabled"><a href="#">&gt;</a></li>
                    <li class="disabled"><a href="#">&gt;&gt;</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="${nextUrl}">&gt;</a></li>
                    <li><a href="${lastUrl}">&gt;&gt;</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </nav>
</c:if>

<!-- Add/edit message dialog -->
<script type="text/javascript">
    //<!-- Show when edit -->
    <c:if test="${message.id != null}">
        $('#addMessageModal').modal('show');
    </c:if>

    //<!-- Clear fields after modal was closed -->
    $('#addMessageModal').on('hidden.bs.modal', function (e) {
        $('#id').val('');
        $('#header').val('');
        $('#content').empty();
        $('#link').val('');
    })
</script>
