Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "add_alert_select_option_to_show",
                     :insert_before => "erb[silent]:contains('cache')",
                     :text => "<% content_for :foot do %>
                                  <div id='shadow-alert'></div>
                                   <div id='alert-select-variant'>
                                    <p><i class='fa fa-exclamation-triangle fa-2x'><span class='hidden'>&nbsp;</span></i></p>
                                    <p><%= t(:select_an_option) %></p>
                                    <%= button_tag :class => 'btn', :id => 'alert-select-variant-button', :type => :submit do %>
                                        <%= t(:accept) %>
                                    <% end %>
                                  </div>
                               <% end %>",
                     :disabled => false)

