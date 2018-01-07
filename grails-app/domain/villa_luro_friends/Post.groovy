package villa_luro_friends

class Post {

    String title
    String content
    User creator
    Date date = new Date()

    static constraints = {
        title(nullable:false, blank: false)
        content(nullable: false, maxSize: 500000,  blank: false)
        creator(nullable: false)
        date(nullable: false)
    }
}
