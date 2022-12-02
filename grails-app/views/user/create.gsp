<!DOCTYPE html>
<html>
    <head>

        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />

        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <asset:stylesheet src="application.css"/>
    </head>
<style>

</style>
    <body class="bd">


        <div id="create-user" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.user}" method="POST">

                    <fieldset class="form">
                        <div class="fieldcontain required">
                             <div class="form__group field"><br><br>
  <input type="text" class="un" placeholder="Nom de utilisateur" name="username" id='name' required /> <br><br>

</div>
                  <div class="form__group field">
  <input type="text" class="pass" placeholder="Password" name="password" id='password' required /><br><br>

</div>
                 <g:select     id="type" name="roleList" optionKey="id" optionValue="authority"
                                     optionkey="id"    from="${roleList}" ><br><br>

                </g:select>
                        </div><div class="fieldcontain required"><br><br>


                <input type="submit" name="create" class="save" value="Create" id="create">    </g:form>
        </div>
    </body>
</html>
