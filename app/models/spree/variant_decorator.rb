Spree::Variant.class_eval do

  include ActionView::Helpers::NumberHelper

  def to_hash
    actual_price  = self.price
    actual_cost_price = self.cost_price
    {
      :id    => self.id,
      :in_stock => self.in_stock?,
      :can_supply => self.can_supply?,
      :price => number_to_currency(actual_price),
      :cost_price => number_to_currency(actual_cost_price)
    }
  end

end
