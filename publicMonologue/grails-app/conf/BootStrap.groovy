import publicmonologue.Profile
import publicmonologue.Role
import publicmonologue.User
import publicmonologue.UserRole

class BootStrap {

    def init = { servletContext ->
        def author = new Role(authority: 'ROLE_AUTHOR').save(flush: true, failOnError: true)
        def testUser = new User(username: 'e', password: 'e').save(flush: true , failOnError: true)

        UserRole.create(testUser, author, true)

        assert User.count == 1
        assert Role.count == 1
        assert UserRole.count == 1

        def defaultProfile = new Profile(blogTitle: 'default title').save(flush: true, failOnError: true)

        assert Profile.count == 1
    }
    def destroy = {
    }
}
