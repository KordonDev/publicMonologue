<%@ page import="publicmonologue.Post" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    </head>
    <body>
        <h1><g:message code="site.search.label" args="[entityName]" /></h1>

        <g:form url="[resource:postInstance, action:'result']" >
            <label>
                ${message(code: 'label.search.title', default: 'Search in title:')}
                <g:textField name="partOfTitle" autocomplete="off" placeholder="Part of Title"/>
            </label>
            <g:submitButton name="search" class="button success" value="${message(code: 'button.search.label', default: 'Search')}" />
        </g:form>

        <script>
            window.addEventListener("onload", activateNavigationButton("searchMenu"));
        </script>

    </body>
</html>