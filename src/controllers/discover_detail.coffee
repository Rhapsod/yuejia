args = arguments[0] || {}
if args.id == 0
  $.discover_detail_imageview.setImage('/images/discover/discover_pirture_detail.png')
  $.title.setText('发现套图')
else
  $.discover_detail_imageview.setImage('/images/discover/discover_skill_detail.png')
  $.title.setText('发现技巧')

back =()->
  $.discover_detail.close()
