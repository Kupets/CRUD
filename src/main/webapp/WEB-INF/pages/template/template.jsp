<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="requestPath" value="${pageContext.servletContext.contextPath}"></c:set>

<head>
    <title><spring:message code="page.title"/></title>
    <meta name="viewport" content="width=device-width, initialscale=1">
    <link href="${requestPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${requestPath}/resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="${requestPath}/resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${requestPath}/resources/css/justified-nav.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <!--<script src="/resources/js/ie8-responsive-file-warning.js"></script>--><![endif]-->
    <script src="${requestPath}/resources/js/ie-emulation-modes-warning.js"></script>
    <!--message.jsp - open modal dialog need jquery.js and bootstrap.js-->
    <script src="${requestPath}/resources/js/jquery-1.11.0.min.js"></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="${requestPath}/resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="body" />
    <tiles:insertAttribute name="footer" />
</div>


<!-- Placed at the end of the document so the pages load faster -->

<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<%--<script src="/resources/js/holder.js"></script>--%>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script type="text/javascript" src="${requestPath}/resources/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>