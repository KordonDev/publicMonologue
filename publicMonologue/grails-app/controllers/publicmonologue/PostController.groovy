package publicmonologue

import java.util.regex.Pattern

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PostController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Post.list(params), model:[postInstanceCount: Post.count()]
    }

    def show(Post postInstance) {
        respond postInstance
    }

    def create() {
        model:[tagList: Tag.all]
    }

    @Transactional
    def save() {
        def postInstance = new Post(params)
        if (params.tags) {          //dublication
            def tagList = Tag.getAll(params.list('tags'))
            for (int i = 0; i < tagList.size(); i++) {
                postInstance.addToTags(tagList.get(i))
            }
        }
        if (postInstance == null) {
            notFound()
            return
        }

        if (postInstance.hasErrors()) {
            respond postInstance.errors, view:'create'
            return
        }

        postInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'post.label', default: 'Post'), postInstance.id])
                redirect postInstance
            }
            '*' { respond postInstance, [status: CREATED] }
        }
    }

    def edit() {
        model:[tagList: Tag.all, postInstance: Post.get(params.id)]
    }

    @Transactional
    def update() {
        Post postInstance = Post.get(params.id)
        if (params.tags) {          //dublication
            def tagList = Tag.getAll(params.list('tags'))
            for (int i = 0; i < tagList.size(); i++) {
                postInstance.addToTags(tagList.get(i))
            }
        }
        if (postInstance == null) {
            notFound()
            return
        }

        if (postInstance.hasErrors()) {
            respond postInstance.errors, view:'edit'
            return
        }

        postInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Post.label', default: 'Post'), postInstance.id])
                redirect postInstance
            }
            '*'{ respond postInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Post postInstance) {

        if (postInstance == null) {
            notFound()
            return
        }

        postInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Post.label', default: 'Post'), postInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'post.label', default: 'Post'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def search() {
    }

    List<Post> searchPost(String partOfTitle) {
        Post.where {
            title =~ "%${partOfTitle}%"
        }.list()
    }

    def result() {
        def posts = searchPost(params.partOfTitle)
        model:[postInstanceList: posts, postInstanceCount: posts.size()]
    }
}
