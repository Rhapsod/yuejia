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

$.reset_password.add actInd

back = (e)->
    $.reset_password.close()

$.title.setText('修改密码')
$.other_button.setTitle('重置')

save_user_info =(e)->
  http_client(Setting.server+'/interface/users/reset_password')

$.other_click.addEventListener('click', save_user_info)

http_client = (url) ->
    client = Ti.Network.createHTTPClient(
        onreadystatechange: (e) ->
            actInd.show()
        onload : (e) ->
            actInd.hide()
            alert(JSON.parse(this.responseText).result)
        onerror : (e) ->
            actInd.hide()
            alert('网络不给力')
        timeout : 5000
    )
    params =
          id: app_session.user_info.id
          password: $.old_password.value
          new_password: $.new_password.value

    client.open("POST", url)
    client.send(params)
