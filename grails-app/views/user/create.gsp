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
    <body>


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
                    <fieldset class="form">
                        <div class="fieldcontain required">
                             <div class="form__group field">
  <input type="input" class="form__field" placeholder="Nom de utilisateur" name="username" id='name' required />
  <label for="name" class="form__label">Nom de utilisateur</label>
</div>
                  <div class="form__group field">
  <input type="input" class="form__field" placeholder="Password" name="password" id='password' required />
  <label for="name" class="form__label">Password</label>
</div>
                  Role <g:select     id="type" name="roleList" optionKey="id" optionValue="authority"
                                     optionkey="id"    from="${roleList}" >

                </g:select>
                        </div><div class="fieldcontain required">


                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
