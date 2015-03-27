$.title.setText('设置')

back = ()->
  $.setting.close()

to_user_info_view = ()->
  Alloy.createController("user_info").getView().open()
