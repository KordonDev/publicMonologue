package publicmonologue

import grails.transaction.Transactional

@Transactional
class SearchService {

    List<Post> searchPost(String partOfTitle, List<Tag> tagList) {
        def foundPosts = Post.where {
            title =~ "%${partOfTitle}%"
        }.list()

        List<Post> foundPostsWithTag = []
        foundPosts.each { post ->
            tagList.each { tagId ->
                if (post.tags.contains(tagId)) {
                    foundPostsWithTag.add(post)
                }
            }
        }
        return foundPostsWithTag
    }
}
