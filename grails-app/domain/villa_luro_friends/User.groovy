package villa_luro_friends

class User {
    String name
    String password
    Boolean isRoot

    static constraints = {
        name(nullable:false, unique: true, blank: false)
        password(nullable: false, blank: false)
        isRoot(nullable: false)
    }
}
