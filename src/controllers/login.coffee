back = ->

to_register_view=(e) ->
    Alloy.createController("register").getView().open()

to_home_view=(e) ->
    Alloy.createController("home").getView().open()
    $.login.close()

$.title.setText('登陆悦装修')
$.title.setColor('#DA338C')
$.back.hide()
