to_login_view=(e) ->
    Alloy.createController("login").getView().open()
    $.register.close()

back = ()->
    $.register.close()

$.title.setText('注册')
$.other_button.setTitle('提交')

save_user_info =(e)->
  #Alloy.createController("home").getView().open()
  #$.register.close()
  alert('注册成功')

$.other_click.addEventListener('click', save_user_info)
