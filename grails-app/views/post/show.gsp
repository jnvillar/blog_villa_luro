<!doctype html>

<html>

<g:render template="/head"/>
<g:render template="/navbar"/>

<body>
<div class="section">
    <div class="container">
        <div class="columns">
            <div class="column is-10 is-offset-1">
                <section class="hero">
                    <div class="hero-body">
                        <div class="container">
                            <h1 class="title">
                                ${post.title}
                            </h1>
                        </div>
                    </div>
                </section>

                <div class="card">
                    <div class="card-content">
                        <div class="content">
                            ${raw(post.content)}
                            <p>Escrito Por: <a href="#">@${post.creator.name}</a></p>
                            <time>Fecha de Publicacion: ${post.date.toString()[0..-3]}</time>
                        </div>
                    </div>
                    <g:if test="${post.creator.name == session.user?.name || session.user?.isRoot}">
                        <footer class="card-footer">
                            <a href="edit/${post.id}" class="card-footer-item">Edit</a>
                            <a onclick="deletePost()" class="card-footer-item">Delete</a>
                        </footer>
                    </g:if>
                </div>
            </div>
        </div>
    </div>
</div>

<g:javascript>

function deletePost(){
    $.post("../post/delete",{
        id : ${post.id}
    },function(response){
        window.location.replace("/")
    })
}

</g:javascript>

</body>
</html>
