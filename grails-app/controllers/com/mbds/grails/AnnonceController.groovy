package com.mbds.grails

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import org.apache.commons.lang.RandomStringUtils
import  java.io.File;

@Secured(['ROLE_ADMIN' , 'ROLE_CLIENT'])
class AnnonceController {

    AnnonceService annonceService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond annonceService.list(params), model:[annonceCount: annonceService.count()]
    }

    def show(Long id) {
        respond annonceService.get(id)
    }

    def create() {

        respond new Annonce(params), model: [userList: User.list()]
    }


    def save(Annonce annonce) {
        if (annonce == null) {
            notFound()
            return
        }
        try {

            def user = User.get(params.author)

            request.multipartFiles.eachWithIndex {
                def mfile, int index ->
                    def filetest = request.getFile('filename'+index)
                    flash.message = filetest
                    String charset = (('A'..'Z') + ('0'..'9')).join()
                    Integer length = 9
                    String randomString = RandomStringUtils.random(length, charset.toCharArray())
                    def file = new File('C:\\Users\\admin\\Desktop\\MBDS\\mbds-grails-22-23-main\\grails-app\\assets\\images\\'+randomString +'.jpg')
                    filetest.transferTo(file)
                    flash.message = file

                    annonce.addToIllustrations(new Illustration(filename: file.getName()))
            }
            annonceService.save(annonce)
            user.addToAnnonces(annonces: annonce)
            user.save(flush: true, failOnError: true)

        } catch (ValidationException e) {
            respond annonce.errors, view: 'create'
            return
        }









        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'annonce.label', default: 'Annonce'), annonce.id])
                redirect annonce
            }
            '*' { respond annonce, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond annonceService.get(id)
    }

    def update(Annonce annonce) {
        if (annonce == null) {
            notFound()
            return
        }
        try {


        }



        catch (ValidationException e) {
            respond annonce.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'annonce.label', default: 'Annonce'), annonce.id])
                redirect annonce
            }
            '*'{ respond annonce, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        annonceService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'annonce.label', default: 'Annonce'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'annonce.label', default: 'Annonce'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
