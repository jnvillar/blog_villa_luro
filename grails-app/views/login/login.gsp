<!doctype html>

<html>

<g:render template="/head"/>
<g:render template="/navbar"/>

<body>

<div class="section">
    <div class="container">
        <div class="columns">
            <div class="column is-6 is-offset-3">
                <div class="notification">
                    <div class="field">
                        <label class="label">Nombre de usuario</label>

                        <div class="control has-icons-right">
                            <input id="name" class="input" name="name" type="text" onkeyup="cleanUsername()">
                            <span id="dangerUser" class="icon is-small is-right" style="display: none">
                                <i class="fa fa-warning"></i>
                            </span>

                            <p id="userDoesNotExists" style="display:none" class="help is-danger">No Existe</p>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Clave</label>

                        <div class="control has-icons-right">
                            <input id="password" class="input" name="password" type="password" onkeyup="cleanPassword()">
                            <span id="passwordDanger" class="icon is-small is-right" style="display: none">
                                <i class="fa fa-warning"></i>
                            </span>

                            <p id="wrongPassword" style="display:none" class="help is-danger">Contraseña Incorrecta</p>
                        </div>
                    </div>

                    <div class="field">
                        <div class="control">
                            <button class="button is-primary" onclick="login()">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<g:javascript>
    function cleanUsername(){
        $('#userDoesNotExists').hide()
        $('#dangerUser').hide()
        $('#name').removeClass("is-danger");
    }

    function cleanPassword(){
        $('#passwordDanger').hide()
        $('#wrongPassword').hide()
        $('#password').removeClass("is-danger");
    }

    function login() {
        var name = $('#name');
        var password = $('#password');

        cleanUsername()
        cleanPassword()

        $.post("login", {
                name: name.val(),
                password: password.val()
        },function(response){
            if(response.status == 200){
                window.location.replace("/")
            }else if(response.status == 405){
                $('#passwordDanger').show()
                $('#wrongPassword').show()
                password.addClass("is-danger");
            }else{
                $('#dangerUser').show()
                $('#userDoesNotExists').show()
                name.addClass("is-danger");
            }
        });
    }

</g:javascript>

</body>
</html>
