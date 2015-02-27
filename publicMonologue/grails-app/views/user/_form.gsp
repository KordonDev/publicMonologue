<%@ page import="publicmonologue.User" %>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password" default="Password" />
		<span class="required-indicator">*</span>
	</label>
    <g:passwordField name="password" required="" value=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password2', 'error')} required">
    <label for="passwordRepeate">
        <g:message code="user.password.repeate" default="Password" />
        <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="passwordRepeate" required="" value=""/>
</div>
