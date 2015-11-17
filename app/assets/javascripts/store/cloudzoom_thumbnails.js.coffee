$ ->
  mainImage = $('#main-image').find("img")
  thumbnails_container = $('#product-images ul.thumbnails')
  thumbnails = thumbnails_container.find('li')

  cloudZoomLoad = (selectedThumb)->
#    console.log("selectedThumbId: " + $('#main-image').data('selectedThumbId'))
#    console.log("selectedThumb attr: " + $('#main-image').data('selectedThumbId'))

#    if !mainImage.hasClass('hover') && $('#main-image').data('selectedThumbId') == selectedThumb.attr('id')
    cloudData = selectedThumb.children('a')
    mainImage.attr('data-cloudzoom', cloudData.data("cloudzoom"))
    mainImage.data("CloudZoom").loadImage(cloudData.attr('href'), cloudData.data("zoomimage"))

  if thumbnails.length > 0
#    console.log(thumbnails.length + ' thumbs finded')
    thumbnails.hover ()->
      mainImage.toggleClass('hover')
#      console.log('hover')
    thumbnails.mousedown ()->
      cloudZoomLoad($(this))
#      console.log('mouseleave')
#    mainImage.load ()->
#      cloudZoomLoad(thumbnails.find('.selected'))
#      console.log('load')
  else
#    console.log('no thumbs')

  CloudZoom.quickStart()
