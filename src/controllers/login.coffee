back = ->

to_register_view=(e) ->
    Alloy.createController("register").getView().open()
    $.login.close()

to_home_view=(e) ->
    Alloy.createController("home").getView().open()
    $.login.close()


free_login = (e)->
  $.phone.setValue('18514243141')
  $.password.setValue('aaaaaaaa')
  http_client(Setting.server+'/interface/users/login')

$.title.setText('登陆悦装修')
$.title.setColor('#DA338C')
$.back.hide()


login =(e)->
  http_client(Setting.server+'/interface/users/login')

http_client = (url) ->
    client = Ti.Network.createHTTPClient(
        onreadystatechange: (e) ->
            load()
        onload : (e) ->
            alert(JSON.parse(this.responseText).result)
            if JSON.parse(this.responseText).result == '登录成功'
              app_session.user_info = JSON.parse(this.responseText).user
              to_home_view()
        onerror : (e) ->
        timeout : 5000
    )
    params =
          phone: $.phone.value
          password: $.password.value

    client.open("POST", url)
    client.send(params)

