<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
	</head>
	<body>

        <h1><g:message code="default.create.label" args="[entityName]" /></h1>

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

        <g:form url="[contrloler: 'Post', action:'save']" >
            <g:render template="form"/>

            <g:submitButton name="create" class="button success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </g:form>

        <script>
            window.addEventListener("onload", activateNavigationButton("newPostMenu"));
        </script>

	</body>
</html>
