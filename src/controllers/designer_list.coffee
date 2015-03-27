to_designer_details = () ->
  Alloy.createController("designer_details").getView().open()
back = () ->
  $.designer_list.close()

$.title.setText("设计师")
