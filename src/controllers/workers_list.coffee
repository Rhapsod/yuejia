to_worker_details = () ->
  Alloy.createController("worker_details").getView().open()
back = () ->
  $.workers_list.close()

$.title.setText("工人")
