<!DOCTYPE html>
<html>
    <head>
      <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonce.label', default: 'Annonce')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="list-annonce" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table table-striped table-hover table-bordered">
                <thead class="thead-dark">
                <tr >
                    <g:sortableColumn property="title" title="Titre" style="text-align:center !important;"/>
                    <g:sortableColumn property="description" title="Description" />

                    <g:sortableColumn property="illustrations" title="Illustrations" />
                    <g:sortableColumn property="price" title="Prix" style="text-align:center !important;"/>
                    <g:sortableColumn property="author" title="Auteur" style="text-align:center !important;" />
                </tr>
                </thead>
                <tbody>
                <g:each var="annonce" in="${annonceList}" >
                    <tr>
                        <td><g:link controller="annonce" action="show" id="${annonce.id}">${annonce.title}</g:link></td>
                       <td style="text-align:center !important;">${annonce.description}</td>

                        <td style="text-align: center !important;">
                            <g:each var="listIllustrations" in="${annonce.illustrations}" >

                                <img src=" ${grailsApplication.config.illustrations.baseUrl}${listIllustrations.filename}" height="150px" width="90px" />
                            </g:each>
                        </td>
                        <td style="text-align:center !important;">${annonce.price}</td>
                        <td style="text-align:center !important;">${annonce.author}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${annonceCount ?: 0}" />
            </div>
        </div>
    </body>
</html>