require 'spree/localized_number'

module Spree
  Calculator::PriceSack.class_eval do
    extend Spree::LocalizedNumber

    localize_number :preferred_minimal_amount,
                    :preferred_normal_amount,
                    :preferred_discount_amount

    def self.description
      I18n.t(:price_sack)
    end
  end
end
