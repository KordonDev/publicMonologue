<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=devie-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'pen.ico')}" type="image/x-icon">
        <title>Kordon's public monologues</title>

        <asset:javascript src="multiselect/jquery.js"/>

        <asset:javascript src="application.js"/>
        <asset:javascript src="vendor/modernizr.js"/>
        <asset:javascript src="multiselect/jquery.multi-select.js"/>
        <asset:stylesheet src="foundation.css"/>
        <asset:stylesheet src="css/normalize.css"/>
        <asset:stylesheet src="multi-select.css"/>

    	<g:layoutHead/>
	</head>
	<body>

        <div class="contain-to-grid fixed">
            <nav class="top-bar" data-topbar role="navigation">
                <ul class="title-area">
                    <li class="name">
                        <h1><a href="#">Kordon's public monologues</a></h1>
                    </li> <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
                    <li class="toggle-topbar menu-icon">
                        <a href="#"><span>Menu</span></a>
                    </li>
                </ul>
                <section class="top-bar-section"> <!-- Right Nav Section -->
                    <ul class="right" id="navigation">
                        <li id="listPostMenu" class=""><g:link controller="post" action="index"><g:message code="menu.listPosts" /></g:link></li>
                        <li id="searchMenu" class=""><g:link controller="post" action="search"><g:message code="menu.search"/></g:link></li>
                        <sec:ifNotLoggedIn>
                            <li id="logIn" class=""><g:link controller="login" action="index"><g:message code="menu.login"/></li></g:link> </li>
                        </sec:ifNotLoggedIn>
                        <sec:ifAllGranted roles="ROLE_AUTHOR">
                            <li id="newPostMenu" class=""><g:link controller="post" action="create"><g:message code="menu.newPost"/></g:link></li>
                            <li><g:link controller="tag" action="index"><g:message code="menu.tag"/></g:link></li>
                            <li><g:link controller="user" action="index"><g:message code="menu.user"/></g:link></li>
                            <li><g:remoteLink controller="logout" action="index" asynchronous="false" after="window.location = '/publicMonologue/'">${message(code: 'menu.logout', default: 'Logout')}</g:remoteLink></li>
                        </sec:ifAllGranted>
                    </ul> <!-- Left Nav Section -->
                </section>
            </nav>
        </div>

        <div class="row">
            <div class="small-centered large-uncentered columns">
                <g:layoutBody/>
            </div>
        </div>

        <asset:javascript src="vendor/jquery.js"/>
        <asset:javascript src="foundation.min.js"/>
        <script>
            $(document).foundation();
        </script>
        <div class="footer" role="contentinfo"></div>
    </body>
</html>
