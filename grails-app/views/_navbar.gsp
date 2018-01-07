<nav class="navbar is-transparent is-danger">
    <div class="navbar-brand">
        <a class="navbar-item" href="/">
            <p>Amigos de Villa Luro</p>
        </a>
    </div>


    <div class="navbar-end">

        <g:if test="${session.user}">
            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link" href="//">Menu</a>

                <div class="navbar-dropdown is-boxed">
                    <a class="navbar-item" href="/post/create">
                        Publicar
                    </a>

                    <g:if test="${session.user?.isRoot}">
                        <hr class="dropdown-divider">

                        <a class="navbar-item" href="/user/create">
                            Agregar Usuario
                        </a>

                        <a class="navbar-item" href="/user/administration">
                            Administrar Usuarios
                        </a>
                    </g:if>
                </div>
            </div>
        </g:if>

        <g:if test="${session.user}">
            <a class="navbar-item" href="/logout">
                <p style="height:28px"> ${session.user.name}: Salir</p>
            </a>
        </g:if>
        <g:else>
            <a class="navbar-item" href="/login">
                <p style="height:28px">Entrar</p>
            </a>
        </g:else>

    </div>
</nav>