package villa_luro_friends

class UserService {

    def createOrEdit(params) {
        User user = User.findOrCreateById(params.id)
        user.name = params.name
        user.password = params.password
        user.isRoot = params.root == "true"
        user.save(flush: true, failOnError: true)
        user
    }

    def get(id){
        return User.findById(id)
    }

    def getAll(){
        return User.findAll()
    }

    def delete(id){
        def user = User.findById(id)
        user.delete(flush: true, failOnError: true)
    }

    def exists(name) {
        return User.findByName(name) != null
    }
}
