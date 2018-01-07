// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.2.0.min
//= require bootstrap
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function ($) {
        $(document).ajaxStart(function () {
            $('#spinner').fadeIn();
        }).ajaxStop(function () {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}

function checkUser() {
    var name = $('#name');

    if (name.val() == "") {
        name.removeClass("is-success");
        name.removeClass("is-danger");
        $('#checkUser').hide();
        $('#dangerUser').hide();
        $('#userNameAvailable').hide();
        $('#userNameUsed').hide()
        return false
    }

    $.get("../../user/exists", {
        name: name.val()
    }, function (response) {
        if (response.exists) {
            name.removeClass("is-success");
            name.addClass("is-danger");
            $('#dangerUser').show();
            $('#checkUser').hide();
            $('#userNameAvailable').hide();
            $('#userNameUsed').show()
            return false
        } else {
            name.removeClass("is-danger");
            name.addClass("is-success");
            $('#checkUser').show();
            $('#dangerUser').hide();
            $('#userNameUsed').hide();
            $('#userNameAvailable').show()
            return true
        }
    });
}

function checkPass() {
    var password = $('#password');
    var password2 = $('#password2');

    if (password.val() == "" || password2.val() == "") {
        password.removeClass("is-success");
        password2.removeClass("is-success");
        password.removeClass("is-danger");
        password2.removeClass("is-danger");
        $('#check1').hide();
        $('#check2').hide();
        $('#danger2').hide();
        $('#danger1').hide();
        return false
    }

    if (password.val() != password2.val()) {
        $('#check1').hide();
        $('#check2').hide();
        $('#danger2').show();
        $('#danger1').show();
        password.removeClass("is-success");
        password2.removeClass("is-success");
        password.addClass("is-danger");
        password2.addClass("is-danger");
        return false
    } else {
        $('#danger2').hide();
        $('#danger1').hide();
        $('#check1').show();
        $('#check2').show();
        password.removeClass("is-danger");
        password2.removeClass("is-danger");
        password.addClass("is-success");
        password2.addClass("is-success");
        return true
    }
}