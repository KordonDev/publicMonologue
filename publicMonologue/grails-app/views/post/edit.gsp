<%@ page import="publicmonologue.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1><g:message code="default.edit.label" args="[entityName]" /></h1>

        <g:if test="${flash.message}">
			<div class="success label" role="status">${flash.message}</div>
		</g:if>

		<g:hasErrors bean="${postInstance}">
			<ul class="alert label" role="alert">
				<g:eachError bean="${postInstance}" var="error">
		    		<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
		</g:hasErrors>

	    <g:form url="[resource:postInstance, action:'update']" method="PUT" >
			<g:hiddenField name="version" value="${postInstance?.version}" />
			<g:render template="form"/>
			<g:actionSubmit class="button success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
		</g:form>
	</body>
</html>
