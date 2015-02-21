package publicmonologue

class Tag {

    String name
    static hasMany = [posts: Post]
    static belongsTo = [Post]

    static constraints = {
        name blank: false, maxSize: 20, unique: true
    }
}
