<%@ page import="publicmonologue.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
	</head>
	<body>
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>

        <table>
			<thead>
				<tr>
                    <g:sortableColumn property="name" title="${message(code: 'tag.name.label', default: 'Name')}" />
                    <td><g:message code="tag.postList"/></td>
				</tr>
			</thead>
			<tbody>
				<g:each in="${tagInstanceList}" status="i" var="tagInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${tagInstance.id}">${fieldValue(bean: tagInstance, field: "name")}</g:link></td>
                        <td>
                            <g:each in="${tagInstance.posts}" var="post" status="j">
                                <g:if test="${j>0}">,</g:if>
                                <g:link controller="post" action="show" id="${post.id}">${post?.title.encodeAsHTML()}</g:link>
                            </g:each>
                        </td>
					</tr>
                </g:each>
			</tbody>
		</table>
        <div class="pagination">
            <g:paginate total="${tagInstanceCount ?: 0}" />
        </div>

        <div id="newTag">
            <h2>New Tag</h2>
            <g:form url="[resource:tagInstance, action:'save']" >
                <g:render template="form"/>
                <g:submitButton name="create" class="button success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </g:form>
        </div>

	</body>
</html>
