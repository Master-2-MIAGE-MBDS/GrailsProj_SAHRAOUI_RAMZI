<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(  default: 'Illustration')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="edit-illustration" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.illustration}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.illustration}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.illustration}" method="PUT">
                <g:hiddenField name="version" value="${this.illustration?.version}" />
                <fieldset class="form" style="height: 110px">
                    <input type="text" name="filename"  class="un" value=" ${this.illustration.filename}" required="" maxlength="100" id="title">
                    <g:select class="un" from="${illustration.list()}"
                              name="id" id='id' optionKey="id" optionValue="id" /> </div>
  <div class="form-label-group">
                <input class="save" type="submit" style="margin-left:600px" value="${message(code: 'default.button.update.label', default: 'Update')}" />
  </div>

               </fieldset>

            </g:form>
        </div>
    </body>
</html>
