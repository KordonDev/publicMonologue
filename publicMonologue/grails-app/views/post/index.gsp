<%@ page import="publicmonologue.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
	</head>
	<body>
		<div id="list-post" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="label success" role="status">${flash.message}</div>
			</g:if>
            ${grailsApplication.config.blog.title}

            <g:render template="post"/>

			<div class="pagination">
				<g:paginate total="${postInstanceCount ?: 0}" />
			</div>
		</div>
        <script>
            window.addEventListener("onload", activateNavigationButton("listPostMenu"));
        </script>

        <g:form controller="post" action="changeTitle">
            <g:textField name="newTitle" />
            <g:submitButton name="go"/>
        </g:form>
	</body>
</html>
