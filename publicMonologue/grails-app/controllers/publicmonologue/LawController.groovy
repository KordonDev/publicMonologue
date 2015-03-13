package publicmonologue

class LawController {

    def profileService

    def index() {}

    def privacy() {}

    def about() {
        [profile: profileService.getProfile()]
    }
}
