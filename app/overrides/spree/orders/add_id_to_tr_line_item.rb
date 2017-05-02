Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                     :name => "add_id_to_tr_line_item",
                     :set_attributes => 'tr',
                     :attributes => {:id => 'line-item-<%= line_item.variant_id %>'})

Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                     :name => "replace_td_quantity",
                     :replace => 'td.cart-item-quantity',
                     :text => '<td class="cart-item-quantity" data-hook="cart_item_quantity" valign="center">
                                  <%= item_form.number_field :quantity, min: 0, class: "form-control line_item_quantity", onclick: "actualizarPrecio(#{line_item.variant_id}, id, #{line_item.price})", size: 5 %>
                              </td>')
