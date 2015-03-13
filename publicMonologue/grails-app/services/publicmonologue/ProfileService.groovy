package publicmonologue

import grails.transaction.Transactional

@Transactional
class ProfileService {
    Profile getProfile() {
        Profile.findAll().get(0)
    }
}
