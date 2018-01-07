package villa_luro_friends


class RootInterceptor {

    RootInterceptor() {
        match(controller: "user", action: "*")
    }

    boolean before() {
        if (!session.user?.isRoot) {
            redirect(url: "/")
            return false
        }
        return true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
