<!doctype html>

<html>

<g:render template="/head"/>
<g:render template="/navbar"/>

<body>

<g:render template="form" model="[user:null]"/>

<g:javascript>

    function create() {

        if (!checkPass()) {
            alert("Datos Inválidos");
            return
        }

        var name = $('#name').val();
        var password = $('#password').val();
        var isRoot = $('#isRoot').is(":checked");


        $.post("create", {
            id: 0,
            name: name,
            password: password,
            root: isRoot
        }, function () {
            alert("Usuario Creado")
        });
    }

</g:javascript>

</body>
</html>
