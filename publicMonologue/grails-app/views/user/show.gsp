
<%@ page import="publicmonologue.User" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	</head>
	<body>
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>

        <ul class="property-list user">
			<g:if test="${userInstance?.username}">
                <li>
                    <g:message code="user.username.label" default="Username" />
                    <g:fieldValue bean="${userInstance}" field="username"/>
                </li>
			</g:if>
			
			<g:if test="${userInstance?.password}">
                <li>
                   <g:message code="user.password.label" default="Password" />
                   <g:fieldValue bean="${userInstance}" field="password"/>
                </li>
			</g:if>
		</ul>

        <h2>${message(code: 'user.update')}</h2>
        <g:hasErrors bean="${userInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${userInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource:userInstance, action:'update']" method="PUT" >
            <g:hiddenField name="version" value="${userInstance?.version}" />
            <g:render template="form"/>
            <g:actionSubmit class="button success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
        </g:form>
	</body>
</html>
