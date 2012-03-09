<%@ page import="testscaffolding.WidGets" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'widGets.label', default: 'WidGets')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <r:require module="filterpane"/>
</head>
<content tag="navigation">
    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
</content>

<body>
<a href="#list-widGets" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div id="list-widGets" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <filterpane:currentCriteria domainBean="testscaffolding.WidGets"/>
    <table>
        <thead>
        <tr>

        </tr>
        </thead>
        <tbody>
        <g:each in="${widGetsInstanceList}" status="i" var="widGetsInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            </tr>
        </g:each>
        </tbody>
    </table>
    <filterpane:filterPane domain="testscaffolding.WidGets" dialog="true"/>

    <filterpane:filterButton/>
    <filterpane:isNotFiltered>Unfiltered!</filterpane:isNotFiltered>
    <filterpane:isFiltered>Filter Applied!</filterpane:isFiltered>
    <div class="pagination">
        <g:paginate total="${widGetsInstanceTotal}"/>
    </div>
</div>
</body>
</html>
