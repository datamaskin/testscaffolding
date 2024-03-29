<%@ page import="testscaffolding.WidGets" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'widGets.label', default: 'WidGets')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<content tag="navigation">
    <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
</content>
<a href="#show-widGets" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div id="show-widGets" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list widGets">
        <form:bean bean="${widGetsInstance}" template="showField"/>
    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${widGetsInstance?.id}"/>
            <g:link class="edit" action="edit" id="${widGetsInstance?.id}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
