<%@ page import="publicmonologue.Profile" %>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'blogTitle', 'error')} required">
	<label for="blogTitle">
		<g:message code="profile.blogTitle.label" default="Blog Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="blogTitle" required="" value="${profileInstance?.blogTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'blogOwner', 'error')}">
	<label for="blogOwner">
		<g:message code="profile.blogOwner.label" default="Blog Owner" />
	</label>
	<g:textField name="blogOwner" value="${profileInstance?.blogOwner}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'twitterName', 'error')}">
    <label for="twitterName">
        <g:message code="profile.twitterName.label" default="Twitter Name" />
    </label>
    <g:textField name="twitterName" value="${profileInstance?.twitterName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'pictureOfBlog', 'error')}">
	<label for="pictureOfBlog">
		<g:message code="profile.pictureOfBlog.label" default="Picture Of Blog" />
	</label>
	<input type="file" id="pictureOfBlog" name="pictureOfBlog" />
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'blogDescription', 'error')}">
    <label for="blogDescription">
        <g:message code="profile.blogDescription.label" default="Blog Description" />
    </label>
    <g:textArea name="blogDescription" value="${profileInstance?.blogDescription}"/>
</div>

