to_index_view = ()->
  Alloy.createController("login").getView().open()
  $.home.close()

to_fitment_customize_view = ()->
  Alloy.createController("fitment_customize").getView().open()

to_require_view =()->
  $.imageView.setImage('/images/background_require.jpg')

to_service_view =()->
  $.imageView.setImage('/images/background_home.jpg')

to_progress_view =()->
  $.imageView.setImage('/images/background_fitment_progess.jpg')

to_construct_progress_view =()->
  $.imageView.setImage('/images/background_construct_progess.jpg')

to_actualize_progress_view =()->
  $.imageView.setImage('/images/background_actualize_progess.jpg')

to_find_view =()->
  $.imageView.setImage('/images/background_find.jpg')

to_find_skill_view =()->
  $.imageView.setImage('/images/background_find_skill.jpg')

to_find_pirture_view =()->
  $.imageView.setImage('/images/background_find_pirture.jpg')

to_designer_view =()->
  Alloy.createController("designer").getView().open()

to_master_view =()->
  Alloy.createController("master").getView().open()

to_setting_view =()->
  Alloy.createController("setting").getView().open()
