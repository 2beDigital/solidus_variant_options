Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                     :name => "insert_content",
                     :insert_before => 'div#inside-product-cart-form',
                     :text => '<%= content_tag :div, id: "product-for-js", data: {product: @product.variants.to_json} do %>
                               <% end %>')
