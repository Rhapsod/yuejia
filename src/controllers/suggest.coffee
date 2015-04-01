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

$.suggest.add actInd

back = (e)->
    $.suggest.close()

$.title.setText('意见反馈')


commit_suggest =(e)->
  http_client(Setting.server+'/interface/suggests/commit_suggest')

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
          title: $.suggest_title.value
          detail: $.suggest_detail.value
          user_id: app_session.user_info.id
          version: Ti.App.version

    client.open("POST", url)
    client.send(params)

