<%@ page import="publicmonologue.Post" %>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} required">
    <label for="title">
        <g:message code="post.title.label" default="Title" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="title" required="" value="${postInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="post.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${postInstance?.content}"/>

</div>
