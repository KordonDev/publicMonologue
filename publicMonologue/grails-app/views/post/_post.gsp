<g:each in="${postInstanceList}" status="i" var="postInstance">
    <div id="post">
        <g:if test="${i!=0}">
            <hr/>
        </g:if>
        <g:link action="show" id="${postInstance.id}"><h1 class="postTitle">${postInstance.title}</h1></g:link>
        <div id="postContent">${postInstance.content}</div>
    </div>
</g:each>

<g:if test="${postInstance}">
    <div id="post">
        <h1 class="postTitle">${postInstance.title}</h1>
        <div class="postContent">${postInstance.content}</div>
    </div>
</g:if>