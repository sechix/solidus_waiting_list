module Spree
  module PermittedAttributes
    class << self
      mattr_reader :stock_request_attributes

      ATTRIBUTES << [:email, :variant_id]
    end
  end
end
