<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
<style>

</style>
    <body>

        <div id="list-illustration" class="content scaffold-list" role="main">
            <h1>Illustrations List</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table" id="tablei" style="margin-left: 100px">
                <thead class="thead-dark">
                <tr >
                    <g:sortableColumn property="Filename" title="Filename" style="text-align:center !important;"/>
                    <g:sortableColumn property="Annonce" title="Annonce" />
                    <g:sortableColumn property="Modifier et visualiser" title="Modifier et visualiser" style="text-align:center !important;"/>

                </tr>
                </thead>
                <tbody>
                <g:each var="Illustration" in="${illustrationList}" >
                    <tr>
                        <td> ${Illustration.filename}</td>
                        <td>  ${Illustration.annonce}</td>
                    <td>
                    <g:form resource="${this.illustration}"   method="DELETE">

                        <g:link   class="" action="edit" resource="${this.Illustration}" id="${Illustration.id}">  <img src="https://img.icons8.com/quill/50/null/experimental-edit-quill.png" style="margin-top: 10px; margin-left: 10px" alt="not found"></g:link>
                        <g:link   class="" action="show" resource="${this.Illustration}" id="${Illustration.id}">   <img src="https://img.icons8.com/ios/50/null/visible--v1.png" alt="not found"/> </g:link> <br><br>
                        <br>


                    </g:form>  </td>
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