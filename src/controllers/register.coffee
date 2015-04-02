back = (e)->
    Alloy.createController("login").getView().open()
    $.register.close()

$.title.setText('注册')
$.other_button.setTitle('提交')


to_home_view = (e) ->
  Alloy.createController("home").getView().open()
  $.register.close()

save_user_info =(e)->
  http_client(Setting.server+'/interface/users/register')

$.other_click.addEventListener('click', save_user_info)

http_client = (url) ->
    client = Ti.Network.createHTTPClient(
        onreadystatechange: (e) ->
            load()
        onload : (e) ->
            alert(JSON.parse(this.responseText).result)
            if JSON.parse(this.responseText).result == '注册成功'
              app_session.user_info = JSON.parse(this.responseText).user
              to_home_view()
        onerror : (e) ->
            console.info(e.error)
        timeout : 5000
    )
    params =
          phone: $.phone.value
          password: $.password.value
    client.open("POST", url)
    client.send(params)

