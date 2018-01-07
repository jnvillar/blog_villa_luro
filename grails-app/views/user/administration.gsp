<!doctype html>

<html>

<g:render template="/head"/>
<g:render template="/navbar"/>

<body>
<div class="section">
    <div class="container">
        <div class="column is-10 is-offset-1">
            <div class="notification">

                <h1 class="title">Administracion de Usuarios</h1>

                <table class="table is-fullwidth is-hoverable">
                    <thead>
                    <tr>
                        <th width="90%">Nombre</th>
                        <th width="10%">Acciones</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each var="user" status="i" in="${users}">
                        <tr id="row-${i}">
                            <td>${user.name}</td>
                            <td>
                                <div class="columns">
                                    <div class="column is-6">
                                        <a onclick="editUser(${user.id})">
                                            <span class="icon">
                                                <i class="fa fa-edit"></i>
                                            </span>
                                        </a>
                                    </div>

                                    <div class="column is-6">
                                        <a onclick="deleteUser(${user.id}, ${i})" class="delete"></a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<g:javascript>
    function editUser(userId) {
        window.location.replace("edit/" + userId);
    }

    function deleteUser(userId, row){
        var confirm = window.confirm("¿Seguro que quiere eliminar al usuario?")
        if (!confirm) return

        $.post("delete", {
            userId: userId,
        }, function (response) {
            $('#row-'+row).hide()
        });
    }
</g:javascript>

</body>
</html>
