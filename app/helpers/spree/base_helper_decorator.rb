Spree::BaseHelper.class_eval do

  private

  def create_product_image_tag(image, product, options, style)
    # Return url only if :src_only option present
    return image.attachment.url(style) if options[:src_only]
    options.reverse_merge! alt: image.alt.blank? ? product.name : image.alt
    image_tag image.attachment.url(style), options
  end

end
