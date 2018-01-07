<div class="section">
    <div class="container">
        <div class="columns">
            <div class="column is-6 is-offset-3">
                <div class="notification">

                    <g:if test="${user}">
                        <h1 class="title">Edición de Usuario</h1>
                    </g:if>
                    <g:else>
                        <h1 class="title">Creación de Usuario</h1>
                    </g:else>


                    <div class="field">
                        <label class="label">Nombre de usuario</label>

                        <div class="control has-icons-right">
                            <input id="name" class="input" name="name" type="text" value="${user?.name}"
                                   onkeyup="checkUser()">
                            <span id="dangerUser" class="icon is-small is-right" style="display: none">
                                <i class="fa fa-warning"></i>
                            </span>
                            <span id="checkUser" class="icon is-small is-right" style="display: none">
                                <i class="fa fa-check"></i>
                            </span>

                            <p id="userNameAvailable" style="display:none" class="help is-success">Disponible</p>

                            <p id="userNameUsed" style="display:none" class="help is-danger">No Disponible</p>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Clave</label>

                        <div class="control has-icons-right">
                            <input id="password" class="input" name="password" type="password" onkeyup="checkPass()">
                            <span id="danger1" class="icon is-small is-right" style="display: none">
                                <i class="fa fa-warning"></i>
                            </span>
                            <span id="check1" class="icon is-small is-right" style="display: none">
                                <i class="fa fa-check"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <label class="label">Repetir clave</label>

                        <div class="control has-icons-right">
                            <input id="password2" class="input" name="password2" type="password" onkeyup="checkPass()">
                            <span id="danger2" class="icon is-small is-right" style="display: none">
                                <i class="fa fa-warning"></i>
                            </span>
                            <span id="check2" class="icon is-small is-right" style="display: none">
                                <i class="fa fa-check"></i>
                            </span>
                        </div>
                    </div>

                    <div class="field">
                        <div class="control">
                            <label class="checkbox">
                                <input id="isRoot" value="1" type="checkbox">
                                Es administrador
                            </label>
                        </div>
                    </div>

                    <div class="field">
                        <div class="control">
                            <g:if test="${user}">
                                <button class="button is-primary" onclick="editUser()">Submit</button>
                            </g:if>
                            <g:else>
                                <button class="button is-primary" onclick="create()">Submit</button>
                            </g:else>
                        </div>
                    </div>
                </div>
            </div>
        </div>