package villa_luro_friends

import grails.testing.web.interceptor.InterceptorUnitTest
import spock.lang.Specification

class RootInterceptorSpec extends Specification implements InterceptorUnitTest<RootInterceptor> {

    def setup() {
    }

    def cleanup() {

    }

    void "Test root interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"root")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
