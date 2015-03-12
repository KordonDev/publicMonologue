
<%@ page import="publicmonologue.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
	</head>
	<body>
		<div id="show-profile" class="content scaffold-show" role="main">

			<h1>${grailsApplication.config.blog.title}</h1>
			<g:if test="${flash.message}">
			    <div class="label success" role="status">${flash.message}</div>
			</g:if>


            <g:if test="${profileInstance.pictureOfBlog}">
                <div style="float: left; margin: 0px 20px 20px 0px">
                    <img src="${createLink(controller: 'profile', action: 'renderImage')}">
                </div>
            </g:if>

            <div id="text" style="">
                <g:if test="${profileInstance?.blogOwner}">
                    <span id="blogOwner-label" class="propertyName"><g:message code="profile.blogOwner.label" default="Blog Owner" />:</span>
                    <span class="property-value" aria-labelledby="blogOwner-label"><g:fieldValue bean="${profileInstance}" field="blogOwner"/></span> <br>
                </g:if>

                <g:if test="${profileInstance?.twitterName}">
                    <span id="twitterName-label" class="propertyName"><g:message code="profile.twitterName.label" default="Twitter Name" />:</span>
                    <span class="property-value" aria-labelledby="twitterName-label"><g:fieldValue bean="${profileInstance}" field="twitterName"/></span> <br>
                </g:if>

                <g:if test="${profileInstance?.blogDescription}">
                    <markdown:renderHtml><g:fieldValue field="blogDescription" bean="${profileInstance}"/></markdown:renderHtml>
                </g:if>
            </div>

            <sec:ifAllGranted roles="ROLE_AUTHOR">
                <div style="clear: left">
    		        <g:link class="button" action="edit" resource="${profileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                </div>
            </sec:ifAllGranted>
		</div>
	</body>
</html>
