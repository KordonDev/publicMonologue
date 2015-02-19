package publicmonologue

class Post {

    String title
    String content
    Date dateCreated

    static constraints = {
        title maxSize: 100, blank: false, nullable: false
        content maxSize: 10000, blank: false, nullable: false
    }
}