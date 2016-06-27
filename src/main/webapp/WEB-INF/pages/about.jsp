<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="page-header">
    <h1>JAVA хостинг на OpenShift</h1>
</div>

<div class="list-group">
    <a href="https://developers.openshift.com/getting-started/windows.html">Установка инструментов</a>
</div>
<div class="list-group">
    <a href="https://developers.openshift.com/servers/tomcat/getting-started.html">Общая информация и создание своего приложения</a>
</div>
<div class="list-group">
    <a href="https://openshift.redhat.com/app/console/applications">Список установленных приложений</a>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Создаем приложение</div>
    <div class="panel-body">
        <code>rhc app-create &lt;application name&gt; tomcat7</code>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Информация о приложении</div>
    <div class="panel-body">
        <code>rhc app-show &lt;application name&gt;</code>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Выгрузить приложение</div>
    <div class="panel-body">
        <code>git clone &lt;git url&gt; &lt;directory to create&gt;</code>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Залить изменения</div>
    <div class="panel-body">
        <code>git commit -a -m "&lt;comment text&gt;"</code><br>
        <code>git push</code>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Логи</div>
    <div class="panel-body">
        <code>rhc tail -a &lt;application name&gt;</code>
    </div>
</div>

<div class="page-header">
    <h1>Бесплатный MySql сервер <a href="https://www.db4free.net/">db4free.net</a></h1>
</div>


<div class="page-header">
    <h1><a href="https://github.com/Kupets/CRUD">Исходники и подробности реализации в Git</a></h1>
</div>

Git
