Click_require = 0
Click_service = 1
Click_progress = 2
Click_discover = 3

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


show_require =()->
  hide_view(Click_require)

show_service =()->
  hide_view(Click_service)

show_progress =()->
  hide_view(Click_progress)

show_discover =()->
  hide_view(Click_discover)
