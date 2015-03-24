to_login_view=(e) ->
    Alloy.createController("login").getView().open()
    $.register.close()
