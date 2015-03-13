package publicmonologue

import org.springframework.web.multipart.commons.CommonsMultipartFile

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProfileController {

    def profileService

    def index() {
        redirect(action: 'show')
    }

    def show() {
        [profileInstance: profileService.getProfile()]
    }


    def edit() {
        [profileInstance:  profileService.getProfile()]
    }

    @Transactional
    def update() {

        def profileInstance = profileService.getProfile()
        profileInstance.blogTitle = params.blogTitle
        profileInstance.blogOwner = params.blogOwner
        profileInstance.blogDescription = params.blogDescription
        profileInstance.twitterName = params.twitterName

        CommonsMultipartFile picture = params.list('pictureOfBlog')?.getAt(0)
        if (picture.size > 0) {
            profileInstance.pictureOfBlog = picture?.bytes
        }

        if (profileInstance == null) {
            notFound()
            return
        }

        if (profileInstance.hasErrors()) {
            respond profileInstance.errors, view: 'edit'
            return
        }

        profileInstance.save flush: true
        grailsApplication.config.blog.title = params.blogTitle

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Profile.label', default: 'Profile'), profileInstance.id])
                redirect profileInstance
            }
            '*' { respond profileInstance, [status: OK] }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'profile.label', default: 'Profile'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def renderImage() {
        def profile = profileService.getProfile()
        response.setContentLength(profile.pictureOfBlog.size())
        response.outputStream.write(profile.pictureOfBlog)
    }

}
