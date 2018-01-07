<div class="section">
    <div class="container">
        <div class="columns">
            <div class="column is-10 is-offset-1">
                <div class="notification">

                    <g:if test="${post}">
                        <h1 class="title">Edicion de Publicación</h1>
                    </g:if>
                    <g:else>
                        <h1 class="title">Creacion de Públicacion</h1>
                    </g:else>


                    <div class="field">
                        <label class="label">Título</label>

                        <div class="control has-icons-right">
                            <input id="title" class="input" name="title" type="text" value="${post?.title}">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Contenido</label>
                        <ckeditor:editor id="content" name="content" height="200px" width="100%">
                            ${post ? post.content : ""}
                        </ckeditor:editor>
                    </div>

                    <div class="field">
                        <div class="control">
                            <button class="button is-primary" onclick="create()">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<g:javascript>

    function create() {
        var content = CKEDITOR.instances['content'].getData();
        var title = $('#title')

        $.post("",{
            id: ${post? post.id : 0},
            title: title.val(),
            content: content
        },function(){
            alert("Post Publicado")
            window.location.replace("/")
        })
    }

</g:javascript>