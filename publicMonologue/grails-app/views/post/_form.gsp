<%@ page import="publicmonologue.Post" %>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} required">
    <label>
        <g:message code="post.title.label" default="Title:" />
        <span class="required-indicator">*</span>
        <g:textField name="title" required="" value="${postInstance?.title}" placeholder="Title..." autocomplete="off"/>
    </label>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'content', 'error')} required">
	<label>
		<g:message code="post.content.label" default="Content:" />
		<span class="required-indicator">*</span>
        <g:textArea name="content"  required="" value="${postInstance?.content}" placeholder="Content..." rows="40" autocomplete="off"/>
	</label>
</div>

<g:select name="tags" from="${tagList}" multiple="true" optionKey="id" optionValue="name" value="${postInstance?.tags}"/>
