package villa_luro_friends


class LoggedInterceptor {

    LoggedInterceptor() {
        match(controller: "post", action: "*")
    }

    boolean before() {
        if (!(session.user || session.user?.isRoot)) {
            redirect(url: "/login")
            return false
        }
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
