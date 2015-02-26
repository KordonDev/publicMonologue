
<%@ page import="publicmonologue.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
	</head>
	<body>
        <g:if test="${flash.message}">
		    <div class="label success" role="status">${flash.message}</div>
		</g:if>

        <g:render template="post"/>

        <sec:ifAllGranted roles="ROLE_AUTHOR">
            <div class="row" style="margin-top: 5%">
                <g:form url="[resource:postInstance, action:'delete']" method="DELETE">
                    <div class="full columns">
                        <g:link class="button" action="edit" resource="${postInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        <g:actionSubmit class="button alert" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </div>
                </g:form>
            </div>
        </sec:ifAllGranted>
	</body>
</html>
