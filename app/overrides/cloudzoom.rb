Deface::Override.new(
                    :virtual_path => "spree/products/_thumbnails",
                    :name => "add_additional_attr_to_thumbnails",
                    :set_attributes => "ul#product-thumbnails li",
                    :attributes => {
                        :id => "<%= i.id %>",
                        :"data-variant-id" => "<%= i.viewable.id %>"
                    }
)

Deface::Override.new(
                    :virtual_path => "spree/products/_thumbnails",
                    :name => "add_link_to_large",
                    :replace_contents => "ul#product-thumbnails li",
                    :partial => "spree/products/cloudzoom"
)
