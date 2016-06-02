<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="titlex" uri="http://tiles.apache.org/tags-tiles-extras"%>

<titlex:useAttribute name="current" id="current" classname="java.lang.String" />

<!-- The justified navigation menu is meant for single line per list item.
<%--Multiple lines will require custom code not provided by Bootstrap. -->--%>
<%--<div class="masthead">--%>
    <%--<nav>--%>
        <%--<ul class="nav nav-justified">--%>
            <%--<li class="${current == 'home' ? 'active' : ''}"><a href="messages"><spring:message code="page.menu.home"/></a></li>--%>
            <%--<li class="${current == 'about' ? 'active' : ''}"><a href="about"><spring:message code="page.menu.projects"/></a></li>--%>
            <%--&lt;%&ndash;<li><a href="#"><spring:message code="page.menu.services"/></a></li>&ndash;%&gt;--%>
            <%--<li><a href="#"><spring:message code="page.menu.links"/></a></li>--%>
            <%--&lt;%&ndash;<li><a href="#"><spring:message code="page.menu.downloads"/></a></li>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<li><a href="#"><spring:message code="page.menu.about"/></a></li>&ndash;%&gt;--%>
            <%--<li class="${current == 'contact' ? 'active' : ''}"><a href="contact"><spring:message code="page.menu.contact"/></a></li>--%>
        <%--</ul>--%>
    <%--</nav>--%>
<%--</div>--%> -->

<ul class="nav nav-tabs">
    <li role="presentation" class="${current == 'messages' ? 'active' : ''}"><a href="messages"><spring:message code="page.menu.home"/></a></li>
    <li role="presentation" class="${current == 'about' ? 'active' : ''}"><a href="about"><spring:message code="page.menu.projects"/></a></li>
    <li role="presentation" class="${current == 'contact' ? 'active' : ''}"><a href="contact"><spring:message code="page.menu.contact"/></a></li>
</ul>