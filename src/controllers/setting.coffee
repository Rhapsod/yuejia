$.title.setText('设置')

back = ()->
  $.setting.close()

to_user_info_view = ()->
  Alloy.createController("user_info").getView().open()

to_suggest_view =(e) ->
    alert(app_session.user_info)
    Alloy.createController("suggest").getView().open()
