module Spree
  StockItem.class_eval do
    after_save :notify_availability

    private
    def notify_availability


      available = count_on_hand_was <= 0 && count_on_hand > 0 && count_on_hand_changed?
      if available and stock_location.name != 'cleaning'
        variant.notify_waiting_list
      end
    end
  end
end
