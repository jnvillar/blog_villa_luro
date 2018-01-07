package helpers

import villa_luro_friends.User
import villa_luro_friends.Post

class PermissionValidator {

    static validate(Post post, User user) {
      if(!(user.isRoot || post.creator == user)){
          throw Exception()
      }
    }
}
