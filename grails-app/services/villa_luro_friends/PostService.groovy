package villa_luro_friends


class PostService {

    def createOrEdit(params) {
        Post post = Post.findOrCreateById(params.id)
        post.title = params.title
        post.content = params.content.replaceAll(/<script*?>.*<\/script>/,"")
        post.creator = params.user
        post.save(flush:true, failOnError:true)
        post
    }

    def get(id){
        Post.findById(id)
    }

    def delete(Post post){
        post.delete(flush: true, failOnError: true)
    }
}
