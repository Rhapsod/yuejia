to_login_view =(e) ->
    Alloy.createController("login").getView().open()
    $.index.close()

to_pro_list = (e) ->
  Alloy.createController("pro_list").getView().open()

$.index.open()
