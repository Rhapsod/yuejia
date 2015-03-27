back=(e) ->
    $.fitment_customize.close()

show_style_menu_open =(e) ->
  $.style_detail.hide()
  $.style_menu.show()

show_style_menu_close =(e) ->
  $.style_detail.show()
  $.style_menu.hide()

style_view_show = (e) ->
  $.style_tab.setBackgroundColor('#DA338C')
  $.customzie_tab.setBackgroundColor('white')
  $.style_view.show()
  $.customize_view.hide()

customzie_view_show = (e) ->
  $.customzie_tab.setBackgroundColor('#DA338C')
  $.style_tab.setBackgroundColor('white')
  $.style_view.hide()
  $.customize_view.show()

tag = true
customzie_menu_show =(e)->
  if tag
    $.customize_image_menu.show()
    $.customize_image_detail.hide()
    tag = false
  else
    $.customize_image_detail.show()
    $.customize_image_menu.hide()
    tag = true

