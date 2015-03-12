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
        blogDescription nullable: true
        pictureOfBlog nullable: true
        twitterName nullable: true
    }
}
