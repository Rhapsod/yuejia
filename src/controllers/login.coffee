to_register_view=(e) ->
    Alloy.createController("register").getView().open()
    $.login.close()

to_home_view=(e) ->
    Alloy.createController("home").getView().open()
    $.login.close()
