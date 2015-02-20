<g:each in="${postInstanceList}" status="i" var="postInstance">
    <div id="post">
        <g:if test="${i!=0}">
            <hr/>
        </g:if>
        <g:link action="show" id="${postInstance.id}"><h1 class="postTitle">${postInstance.title}</h1></g:link>
        <div id="postContent">
            <markdown:renderHtml>${postInstance.content} </markdown:renderHtml>
        </div>
    </div>
</g:each>

<g:if test="${postInstance}">
    <div id="post">
        <h1 class="postTitle">${postInstance.title}</h1>
        <div class="postContent">
            <markdown:renderHtml>${postInstance.content} </markdown:renderHtml>
        </div>
    </div>
    <div id="tags">
        <ul>
            <g:each in="${postInstance.tags}" var="tag">
                <li>${tag.name}</li>
            </g:each>
        </ul>
    </div>
    <div id="dateCreated">
        ${message(code: 'label.created', default: 'Created:')} <g:formatDate format="dd.MM.yyyy" date="${postInstance.dateCreated}"/>
    </div>
</g:if>