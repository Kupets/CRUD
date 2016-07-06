<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<head>
    <title><spring:message code="page.title"/></title>
    <meta name="viewport" content="width=device-width, initialscale=1">
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="/resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/resources/css/justified-nav.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <!--<script src="/resources/js/ie8-responsive-file-warning.js"></script>--><![endif]-->
    <script src="/resources/js/ie-emulation-modes-warning.js"></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="/resources/js/jquery-1.11.0.min.js"></script>
    <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
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
<script type="text/javascript" src="/resources/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>