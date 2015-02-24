import publicmonologue.Role
import publicmonologue.User
import publicmonologue.UserRole

class BootStrap {

    def init = { servletContext ->
        def author = new Role(authority: 'ROLE_AUTHOR').save(flush: true)
        def testUser = new User(username: 'e', password: 'e').save(flush: true)

        UserRole.create(testUser, author, true)

        assert User.count == 1
        assert Role.count == 1
        assert UserRole.count == 1
    }
    def destroy = {
    }
}
