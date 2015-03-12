<%@ page import="publicmonologue.Profile" %>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'blogTitle', 'error')} required">
	<label for="blogTitle">
		<g:message code="profile.blogTitle.label" default="Blog Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="blogTitle" required="" value="${profileInstance?.blogTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'blogOwner', 'error')} required">
	<label for="blogOwner">
		<g:message code="profile.blogOwner.label" default="Blog Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="blogOwner" required="" value="${profileInstance?.blogOwner}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'twitterName', 'error')} required">
    <label for="twitterName">
        <g:message code="profile.twitterName.label" default="Twitter Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="twitterName" required="" value="${profileInstance?.twitterName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'pictureOfBlog', 'error')} required">
	<label for="pictureOfBlog">
		<g:message code="profile.pictureOfBlog.label" default="Picture Of Blog" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="pictureOfBlog" name="pictureOfBlog" />
</div>

<div class="fieldcontain ${hasErrors(bean: profileInstance, field: 'blogDescription', 'error')} required">
    <label for="blogDescription">
        <g:message code="profile.blogDescription.label" default="Blog Description" />
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="blogDescription" required="" value="${profileInstance?.blogDescription}"/>
</div>

