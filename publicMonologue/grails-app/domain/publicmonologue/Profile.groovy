package publicmonologue

class Profile {

    String blogTitle
    String blogOwner
    String ownerAddressStreetWithNumber
    String ownerCity
    String email
    String blogDescription
    byte [] pictureOfBlog
    String twitterName

    static constraints = {
        blogTitle blank: false
        blogOwner blank: false
        ownerAddressStreetWithNumber blank: false
        ownerCity blank: false
        email email: true, blank: false
        blogDescription nullable: true, maxSize: 10000
        pictureOfBlog nullable: true, maxSize: 1024* 1024
        twitterName nullable: true
    }
}
