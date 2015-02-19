<g:each in="${postInstanceList}" status="i" var="postInstance">
    <div id="post">
        <g:link action="show" id="${postInstance.id}"><h3 class="postTitle">${postInstance.title}</h3></g:link>
        <div id="postContent">${postInstance.content}</div>
    </div>
</g:each>

<g:if test="${postInstance}">
    <div id="post">
        <h3 class="postTitle">${postInstance.title}</h3>
        <div class="postContent">${postInstance.content}</div>
    </div>
</g:if>