<!doctype html>

<html>

<g:render template="/head"/>
<g:render template="/navbar"/>

<body>
<section class="section">
    <div class="container">
        <h1 class="title">
            Últimas Noticias
        </h1>
    </div>

    <div class="section">
        <div class="container">
            <div class="columns">
                <div class="column is-10 is-offset-1">

                    <g:each var="post" in="${villa_luro_friends.Post.findAll()}">
                        <g:render template="/post/indexShow" model="[post: post]"/>
                    </g:each>

                </div>
            </div>
        </div>
    </div>
</section>

<g:javascript>

    function deletePost(postId) {
        $.post("/post/delete", {
            id: postId
        }, function (response) {
            location.reload();
        })
    }

    function openPost(postId){
        window.location.replace("/post/"+postId)
    }

</g:javascript>

</body>
</html>
