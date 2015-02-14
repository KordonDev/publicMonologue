package publicmonologue

class Post {

    String title
    String content

    static constraints = {
        title blank: false, nullable: false
        content blank: false, nullable: false
    }
}