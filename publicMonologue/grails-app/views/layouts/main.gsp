<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">

        <asset:javascript src="vendor/modernizr.js"/>
        <asset:stylesheet src="foundation.css"/>
        <asset:stylesheet src="css/normalize.css"/>

    	<g:layoutHead/>
	</head>
	<body>

        <div class="contain-to-grid">
            <nav class="top-bar" data-topbar role="navigation">
                <section class="top-bar-section">
                    <ul class="left">
                        <li class=""><g:link class="button" action="index"><g:message code="menu.listPosts" /></g:link></li>
                        <li class="active"><g:link class="button" action="create"><g:message code="menu.newPost"/></g:link></li>
                    </ul>
                </section>
            </nav>
        </div>

        <div class="row">
            <div class="small-centered large-uncentered columns">
                <g:layoutBody/>
            </div>
        </div>


        <script src="js/vendor/jquery.js"/>
        <script src="js/foundation.min.js"/>
        <script>
            $(document).foundation();
        </script>
        <div class="footer" role="contentinfo"></div>
    </body>
</html>
