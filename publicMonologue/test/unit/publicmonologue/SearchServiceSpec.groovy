package publicmonologue

import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(SearchService)
@Mock([Post, Tag])
class SearchServiceSpec extends Specification {

    def programmingTag = new Tag(name: 'Programming')
    def bloggingTag = new Tag(name: 'Blogging')

    def programmingPost = new Post(title: 'Programming is fun', content: 'I like programming', tags: programmingTag)
    def programmingAndBloggingPost = new Post(title: 'Write about your programming', content: 'Share experience', tags: [programmingTag, bloggingTag])
    def bloggingPost = new Post(title: 'Writing is fun', content: "If you finished a post, it's fun", tags: bloggingTag)


    def setup() {

        programmingTag.save(flush: true)
        bloggingTag.save(flush: true)

        programmingPost.save(flush: true)
        programmingAndBloggingPost.save(flush: true)
        bloggingPost.save(flush: true)
    }

    def cleanup() {
    }

    void "no  Tag found for selected"() {
        given: 'Tag without Post'
        def educationTag = new Tag(name: 'education')

        when:'search after tag in all posts'
        def postList = service.searchPost('', [educationTag])

        then: 'No Post found'
        postList == []
    }

    void "find all related Posts to Tag"() {
        given: 'Tag with two Posts'

        when: 'Search after Tag'
        def postList = service.searchPost('', [bloggingTag])

        then: 'All posts with Tag Blogging are found'
        postList.size() == 2
        postList.containsAll([bloggingPost, programmingAndBloggingPost])
    }

    void "find Posts related to title search"() {
        given: 'Search String in a title'
        def searchTitle = 'Write about'

        when: 'Search after title with all tags'
        def postList = service.searchPost(searchTitle, [bloggingTag, programmingTag])

        then: 'Post about writing about programming should be found'
        postList == [programmingAndBloggingPost]
    }

    void "find Posts related to title and tag"() {
        given: 'Search string in a title'
        def searchString = 'fun'

        when: 'Search after title and tag'
        def postList = service.searchPost(searchString, [programmingTag])

        then: 'Post about programming should be found'
        postList == [programmingPost]
    }

}
