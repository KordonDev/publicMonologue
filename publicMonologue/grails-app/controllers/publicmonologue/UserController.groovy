package publicmonologue


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [update: "PUT"]

    def index(Integer max) {
        redirect(controller: 'User', action: 'show')
       // params.max = Math.min(max ?: 10, 100)
        //respond User.list(params), model: [userInstanceCount: User.count()]
    }

    def show() {
        respond User.findAll().get(0)
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            flash.error = userInstance.errors
        } else if (params.password != params.passwordRepeate) {
            flash.error = message(code: 'user.update.differentPassword')
        } else if (userInstance.save(flush: true)) {
            flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
        } else {
            flash.error = message(code: 'user.update.notSaved')
        }

        request.withFormat {
            form multipartForm {
                redirect userInstance
            }
            '*' { respond userInstance, [status: OK] }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
