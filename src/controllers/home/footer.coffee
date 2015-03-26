Click_require = 0
Click_service = 1
Click_progress = 2
Click_discover = 3


change_title =(num)->
  switch num
      when Click_require
          $.title.setText('装修需求')
      when Click_service
          $.title.setText('装修服务')
      when Click_progress
          $.title.setText('装修进度')
      when Click_discover
          $.title.setText('装修发现')

select_button_image =(num)->
  switch num
      when Click_require
          $.require_button.setImage('/images/footer/require_button_select.png')
          $.service_button.setImage('/images/footer/service_button.png')
          $.progress_button.setImage('/images/footer/progress_button.png')
          $.discover_button.setImage('/images/footer/discover_button.png')
      when Click_service
          $.require_button.setImage('/images/footer/require_button.png')
          $.service_button.setImage('/images/footer/service_button_select.png')
          $.progress_button.setImage('/images/footer/progress_button.png')
          $.discover_button.setImage('/images/footer/discover_button.png')
      when Click_progress
          $.require_button.setImage('/images/footer/require_button.png')
          $.service_button.setImage('/images/footer/service_button.png')
          $.progress_button.setImage('/images/footer/progress_button_select.png')
          $.discover_button.setImage('/images/footer/discover_button.png')
      when Click_discover
          $.require_button.setImage('/images/footer/require_button.png')
          $.service_button.setImage('/images/footer/service_button.png')
          $.progress_button.setImage('/images/footer/progress_button.png')
          $.discover_button.setImage('/images/footer/discover_button_select.png')


hide_view =(num) ->
  switch num
      when Click_require
          $.require.show()
          $.service.hide()
          $.progress.hide()
          $.discover.hide()
      when Click_service
          $.require.hide()
          $.service.show()
          $.progress.hide()
          $.discover.hide()
      when Click_progress
          $.require.hide()
          $.service.hide()
          $.progress.show()
          $.discover.hide()
      when Click_discover
          $.require.hide()
          $.service.hide()
          $.progress.hide()
          $.discover.show()
  select_button_image(num)
  change_title(num)

show_require =()->
  hide_view(Click_require)

show_service =()->
  hide_view(Click_service)

show_progress =()->
  hide_view(Click_progress)

show_discover =()->
  hide_view(Click_discover)
