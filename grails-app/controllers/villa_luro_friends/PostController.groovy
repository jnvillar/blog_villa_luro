package villa_luro_friends

import helpers.PermissionValidator

class PostController {
    PostService postService

    def createForm() {
        render(view: "create")
    }

    def editForm() {
        Post post = postService.get(params.id)
        render(view: "edit", model: [post: post])
    }

    def createOrEdit() {
        params.user = session.user
        postService.createOrEdit(params)
        render(status: 200)
    }

    def show() {
        Post post = postService.get(params.id)
        if (!post) {
            render(status: 404)
        } else {
            render(view: "show", model: [post: post])
        }
    }

    def delete() {
        println "hola"
        Post post = postService.get(params.id)
        println "hola"
        PermissionValidator.validate(post, session.user)
        println "hola"
        postService.delete(post)
        println "hola"
        render(status: 200)
    }
}
