<div class="notification">
    <div class="card" onclick="openPost(${post.id})">
        <header class="card-header">
            <p class="card-header-title">
                ${post.title}
            </p>
            <a href="#" class="card-header-icon" aria-label="more options">
                <span class="icon">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </span>
            </a>
        </header>

        <div class="card-content">
            <div class="content">
                <g:if test="${post.content.size() > 500}">
                    ${raw(post.content[0..500])} ... <a href="/post/${post.id}">Seguir leyendo</a>
                </g:if>
                <g:else>
                    ${raw(post.content)}
                </g:else>

                <p>Escrito Por: <a href="#">@${post.creator.name}</a></p>
                <time>Fecha de Publicacion: ${post.date.toString()[0..-3]}</time>
            </div>
        </div>
        <g:if test="${post.creator.name == session.user?.name || session.user?.isRoot}">
            <footer class="card-footer">
                <a href="/post/edit/${post.id}" class="card-footer-item">Edit</a>
                <a onclick="deletePost(${post.id})" class="card-footer-item">Delete</a>
            </footer>
        </g:if>
    </div>
</div>

