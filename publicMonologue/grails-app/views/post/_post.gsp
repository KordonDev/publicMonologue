<g:each in="${postInstanceList}" status="i" var="postInstance">
    <div id="post">
        <g:link action="show" id="${postInstance.id}"><h3>${postInstance.title}</h3></g:link>
        <div id="postContent">${postInstance.content}</div>
    </div>
</g:each>