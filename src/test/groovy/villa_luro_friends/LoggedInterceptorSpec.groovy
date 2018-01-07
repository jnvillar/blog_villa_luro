package villa_luro_friends

import grails.testing.web.interceptor.InterceptorUnitTest
import spock.lang.Specification

class LoggedInterceptorSpec extends Specification implements InterceptorUnitTest<LoggedInterceptor> {

    def setup() {
    }

    def cleanup() {

    }

    void "Test login interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"login")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
