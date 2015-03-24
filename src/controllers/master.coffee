back = ()->
  $.master.close()

to_master_detail_view =()->
    Alloy.createController("master_detail").getView().open()
