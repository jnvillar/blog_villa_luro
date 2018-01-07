package villa_luro_friends

import grails.converters.JSON

class UserController {
    UserService userService

    def createForm() {
        render(view: "create")
    }

    def createOrEdit() {
        userService.createOrEdit(params)
        render(status: 200)
    }

    def editForm() {
        User user = userService.get(params.id)
        render(view: "edit", model: [user: user])
    }

    def administrate() {
        def users = userService.getAll()
        println users
        render(view: "administration", model: [users: users])
    }

    def delete() {
        userService.delete(params.userId)
        render(status: 200)
    }

    def exists() {
        def exists = userService.exists(params.name)
        def response = [status: 200, exists: exists]
        render response as JSON
    }
}
