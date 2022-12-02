<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustration.label', default: 'Illustration')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
<style>

</style>
    <body>

        <div id="list-illustration" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table" id="tablei">
                <thead class="thead-dark">
                <tr >
                    <g:sortableColumn property="Filename" title="Filename" style="text-align:center !important;"/>
                    <g:sortableColumn property="Annonce" title="Annonce" />


                </tr>
                </thead>
                <tbody>
                <g:each var="Illustration" in="${illustrationList}" >
                    <tr>
                        <td> ${Illustration.filename}</td>
                        <td>  ${Illustration.annonce}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${illustrationCount ?: 0}" />
            </div>
        </div>
    </body>
</html>