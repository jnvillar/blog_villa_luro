package villa_luro_friends

import grails.converters.JSON
import helpers.LoginHelper

class LoginController {
    def loginForm() {
        render(view: "login")
    }

    def login() {
        def response = LoginHelper.validate(session, params)
        render response as JSON
    }

    def logout() {
        LoginHelper.logout(session)
        redirect(uri: "/")
    }
}
