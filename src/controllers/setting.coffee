$.title.setText('设置')

back = ()->
  $.setting.close()

to_user_info_view = ()->
  Alloy.createController("user_info").getView().open()

to_suggest_view =(e) ->
    Alloy.createController("suggest").getView().open()

to_reset_password_view =(e) ->
    Alloy.createController("reset_password").getView().open()
