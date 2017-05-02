Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                     :name => "add_id_to_tr_line_item",
                     :set_attributes => 'tr',
                     :attributes => {:id => 'line-item-<%= line_item.variant_id %>'})
