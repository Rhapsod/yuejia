$.title.setText('完善信息')
$.other_button.setTitle('保存')

save_user_info =(e)->
  alert('save!')

$.other_click.addEventListener('click', save_user_info)

back = ()->
  $.user_info.close()
