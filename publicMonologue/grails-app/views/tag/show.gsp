
<%@ page import="publicmonologue.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
	</head>
	<body>
		<h1><g:message code="print.argument" args="[entityName]" /> <g:fieldValue bean="${tagInstance}" field="name"/></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>

        <h3><g:message code="tag.postList"/></h3>
		<ul class="property-list tag">
			<g:if test="${tagInstance?.posts}">
					<g:each in="${tagInstance.posts}" var="p">
                        <li>
					    <g:link controller="post" action="show" id="${p.id}">${p?.title.encodeAsHTML()}</g:link></li>
					</g:each>
			</g:if>

		</ul>
		<g:form url="[resource:tagInstance, action:'delete']" method="DELETE">
			<g:link class="button success" action="edit" resource="${tagInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
		   	<g:actionSubmit class="button alert" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
		</g:form>
		</div>
	</body>
</html>
