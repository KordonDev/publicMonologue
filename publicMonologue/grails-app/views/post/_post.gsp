<g:each in="${postInstanceList}" status="i" var="postInstance">
    <div id="post">
        <g:if test="${i!=0}">
            <hr/>
        </g:if>
        <g:link action="show" id="${postInstance.id}"><h1 class="postTitle">${postInstance.title}</h1></g:link>
        <div id="postContent">${postInstance.content}</div>
        <div id="dateCreated">
            ${message(code: 'label.created', default: 'Created:')} <g:formatDate format="dd.MM.yyyy" date="${postInstance.dateCreated}"/>
        </div>
    </div>
</g:each>

<g:if test="${postInstance}">
    <div id="post">
        <h1 class="postTitle">${postInstance.title}</h1>
        <div class="postContent">${postInstance.content}</div>
    </div>
    <div id="dateCreated">
        ${message(code: 'label.created', default: 'Created:')} <g:formatDate format="dd.MM.yyyy" date="${postInstance.dateCreated}"/>
    </div>
</g:if>