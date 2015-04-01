#网络加载旋转效果
style
if Ti.Platform.name == 'iPhone OS'
  style = Ti.UI.iPhone.ActivityIndicatorStyle.DARK
else
  style = Ti.UI.ActivityIndicatorStyle.DARK

actInd = Ti.UI.createActivityIndicator(
  color: '#C5C5C5'
  font: {fontFamily:'Helvetica Neue', fontSize:8}
  message: 'Loading...'
  style:style
  top:'50%'
  left:'40%'
  height:Ti.UI.SIZE,
  width:Ti.UI.SIZE
)

$.register.add actInd

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
  actInd.show()

$.other_click.addEventListener('click', save_user_info)

http_client = (url) ->
    client = Ti.Network.createHTTPClient(
        onreadystatechange: (e) ->
            actInd.show()
        onload : (e) ->
            actInd.hide()
            alert(JSON.parse(this.responseText).result)
            if JSON.parse(this.responseText).result == '注册成功'
              User_information = JSON.parse(this.responseText).user
              to_home_view()
        onerror : (e) ->
            actInd.hide()
            alert('网络不给力')
        timeout : 5000
    )
    params =
          phone: $.phone.value
          password: $.password.value
    client.open("POST", url)
    client.send(params)

