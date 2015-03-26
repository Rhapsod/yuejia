Click_progress_fitment = 0
Click_progress_construct = 1
Click_progress_actualize = 2

select_progress_button_image =(num)->
  switch num
      when Click_progress_fitment
          $.progress_fitment_button.setBackgroundColor('#DA338C')
          $.progress_construct_button.setBackgroundColor('white')
          $.progress_actualize_button.setBackgroundColor('white')
          $.progress_fitment_button.setColor('white')
          $.progress_construct_button.setColor('#5B5B5B')
          $.progress_actualize_button.setColor('#5B5B5B')
      when Click_progress_construct
          $.progress_fitment_button.setBackgroundColor('white')
          $.progress_construct_button.setBackgroundColor('#DA338C')
          $.progress_actualize_button.setBackgroundColor('white')
          $.progress_fitment_button.setColor('#5B5B5B')
          $.progress_construct_button.setColor('white')
          $.progress_actualize_button.setColor('#5B5B5B')
      when Click_progress_actualize
          $.progress_fitment_button.setBackgroundColor('white')
          $.progress_construct_button.setBackgroundColor('white')
          $.progress_actualize_button.setBackgroundColor('#DA338C')
          $.progress_fitment_button.setColor('#5B5B5B')
          $.progress_construct_button.setColor('#5B5B5B')
          $.progress_actualize_button.setColor('white')

hide_progress_view=(num) ->
  switch num
      when Click_progress_fitment
          $.progress_fitment.show()
          $.progress_construct.hide()
          $.progress_actualize.hide()
      when Click_progress_construct
          $.progress_fitment.hide()
          $.progress_construct.show()
          $.progress_actualize.hide()
      when Click_progress_actualize
          $.progress_fitment.hide()
          $.progress_construct.hide()
          $.progress_actualize.show()
  select_progress_button_image(num)

show_progress_fitment =()->
  hide_progress_view(Click_progress_fitment)

show_progress_construct =()->
  hide_progress_view(Click_progress_construct)

show_progress_actualize =()->
  hide_progress_view(Click_progress_actualize)

