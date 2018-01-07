<!doctype html>

<html>

<g:render template="/head"/>
<g:render template="/navbar"/>

<body>

<g:render template="form" model="[user: user]"/>

<g:javascript>

    if(${user.isRoot}) $('#isRoot').prop('checked', true);

    function editUser() {
        if (!checkPass()) {
            alert("Datos Inválidos");
            return
        }

        var name = $('#name').val();
        var password = $('#password').val();
        var isRoot = $('#isRoot').is(":checked");

        $.post("", {
            name: name,
            password: password,
            root: isRoot
        }, function () {
            alert("Usuario Editado")
        });
}

</g:javascript>

</body>
</html>
