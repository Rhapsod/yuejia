back = (e)->
    $.suggest.close()

$.title.setText('意见反馈')


commit_suggest =(e)->
  http_client(Setting.server+'/interface/suggests/commit_suggest')

http_client = (url) ->
    client = Ti.Network.createHTTPClient(
        onreadystatechange: (e) ->
            load()
        onload : (e) ->
            alert(JSON.parse(this.responseText).result)
            load_cancel()
        onerror : (e) ->
            console.info(e.error)
        timeout : 5000
    )
    params =
          title: $.suggest_title.value
          detail: $.suggest_detail.value
          user_id: app_session.user_info.id
          version: Ti.App.version

    client.open("POST", url)
    client.send(params)

