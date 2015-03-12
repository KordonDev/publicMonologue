package publicmonologue

class Profile {

    String blogTitle
    String blogOwner
    String blogDescription
    byte [] pictureOfBlog
    String twitterName

    static constraints = {
        blogTitle blank: false
        blogOwner nullable: true
        blogDescription nullable: true, maxSize: 10000
        pictureOfBlog nullable: true, maxSize: 1024* 1024
        twitterName nullable: true
    }
}
