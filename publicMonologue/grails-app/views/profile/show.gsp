
<%@ page import="publicmonologue.Profile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profile.label', default: 'Profile')}" />
	</head>
	<body>
		<div id="show-profile" class="content scaffold-show" role="main">
			<h1><g:message code="profile.show.headline" /></h1>
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>

			<ol class="property-list profile">
			
				<g:if test="${profileInstance?.blogTitle}">
			    	<li class="fieldcontain">
					    <span id="blogTitle-label" class="property-label"><g:message code="profile.blogTitle.label" default="Blog Title" /></span>
					
						<span class="property-value" aria-labelledby="blogTitle-label"><g:fieldValue bean="${profileInstance}" field="blogTitle"/></span>
					
				    </li>
				</g:if>
			
				<g:if test="${profileInstance?.blogDescription}">
				<li class="fieldcontain">
					<span id="blogDiscription-label" class="property-label"><g:message code="profile.blogDiscription.label" default="Blog Discription" /></span>
					
						<span class="property-value" aria-labelledby="blogDiscription-label"><g:fieldValue bean="${profileInstance}" field="blogDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.blogOwner}">
				<li class="fieldcontain">
					<span id="blogOwner-label" class="property-label"><g:message code="profile.blogOwner.label" default="Blog Owner" /></span>
					
						<span class="property-value" aria-labelledby="blogOwner-label"><g:fieldValue bean="${profileInstance}" field="blogOwner"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.pictureOfBlog}">
				<li class="fieldcontain">
					<span id="pictureOfBlog-label" class="property-label"><g:message code="profile.pictureOfBlog.label" default="Picture Of Blog" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${profileInstance?.twitterName}">
				<li class="fieldcontain">
					<span id="twitterName-label" class="property-label"><g:message code="profile.twitterName.label" default="Twitter Name" /></span>
					
						<span class="property-value" aria-labelledby="twitterName-label"><g:fieldValue bean="${profileInstance}" field="twitterName"/></span>
					
				</li>
				</g:if>
			
			</ol>
            <sec:ifAllGranted roles="ROLE_AUTHOR">
    		    <g:link class="button" action="edit" resource="${profileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            </sec:ifAllGranted>
		</div>
	</body>
</html>
