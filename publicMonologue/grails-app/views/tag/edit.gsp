<%@ page import="publicmonologue.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
	</head>
	<body>
		<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>

        <g:hasErrors bean="${tagInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${tagInstance}" var="error">
		    		<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
		</g:hasErrors>

		<g:form url="[resource:tagInstance, action:'update']" method="PUT" >
		    <g:hiddenField name="version" value="${tagInstance?.version}" />
			<g:render template="form"/>
			<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
		</g:form>
	</body>
</html>
