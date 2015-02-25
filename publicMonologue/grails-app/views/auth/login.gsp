<html>
    <head>
        <meta name='layout' content='main'/>
    </head>

    <body>
    <div class="">
        <h1>${message(code: "springSecurity.login.button")}</h1>
        <div class=''>
            <g:if test='${flash.message}'>
                <div class='login_message'>${flash.message}</div>
            </g:if>

            <g:form uri="/j_spring_security_check" method='POST' id='loginForm' class='cssform' autocomplete='off'>
                <p>
                    <label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
                    <input type='text' class='text_' name='j_username' id='username'/>
                </p>

                <p>
                    <label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
                    <input type='password' class='text_' name='j_password' id='password'/>
                </p>

                <p>
                    <input class="button" type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
                </p>
            </g:form>
        </div>
    </div>
    <script type='text/javascript'>
        <!--
        (function() {
            document.forms['loginForm'].elements['j_username'].focus();
        })(); // -->
    </script>
    </body>
</html>
