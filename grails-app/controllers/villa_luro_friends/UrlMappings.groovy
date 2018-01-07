package villa_luro_friends

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "index") {
            action = [GET: "index"]
        }

        "/login"(controller: "login") {
            action = [GET: "loginForm", POST: "login"]
        }

        "/logout"(controller: "login") {
            action = [GET: "logout"]
        }

        "/user/create"(controller: "User") {
            action = [GET: "createForm", POST: "createOrEdit"]
        }

        "/user/exists"(controller: "User", parseRequest: true) {
            action = [GET: "exists"]
        }

        "/user/delete"(controller: "User") {
            action = [POST: "delete"]
        }

        "/user/edit/$id"(controller: "User", parseRequest: true) {
            action = [GET: "editForm", POST: "createOrEdit"]
        }

        "/user/administration"(controller: "User", parseRequest: true) {
            action = [GET: "administrate"]
        }

        "/post/create"(controller: "Post") {
            action = [GET: "createForm", POST: "createOrEdit"]
        }

        "/post/$id"(controller: "Post") {
            action = [GET: "show"]
        }

        "/post/delete"(controller: "Post") {
            action = [POST: "delete"]
        }

        "/post/edit/$id"(controller: "Post") {
            action = [GET: "editForm", POST: "createOrEdit"]
        }

        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
