$ ->
  mainImage = $('#main-image img')
  thumbnails_container = $('#product-images ul.thumbnails')
  thumbnails = thumbnails_container.find('li')

  cloudZoomLoad = (selectedThumb)->
    cloudData = selectedThumb.children('a')
    mainImage.attr('data-cloudzoom', cloudData.data('cloudzoom'))
    mainImage.data('CloudZoom').loadImage(cloudData.attr('href'), cloudData.data('zoomimage'))

  if thumbnails.length > 0
    thumbnails.hover ()->
      mainImage.toggleClass('hover')
    thumbnails.mousedown ()->
      cloudZoomLoad($(this))
    thumbnails_container.on 'thumbschanged', ()->
      cloudZoomLoad(thumbnails_container.find('li.selected'))

  CloudZoom.quickStart()
