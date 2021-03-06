module Spree
  class StockRequest < ActiveRecord::Base
    belongs_to :variant
    delegate :product, :to => :variant

    validates :email, :presence => true,
              :format => {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

    default_scope { order('created_at desc') }

    scope :notified, lambda { |is_notified| where(:status => is_notified ? 'notified' : 'new') }

    state_machine :status, :initial => 'new' do
      event :notify do
        transition :from => 'new', :to => 'notified'
      end

      after_transition :to => 'notified', :do => :send_email
    end

    private

    def send_email
      Spree::RentalMailer.back_in_stock(self).deliver_now
    end

  end
end
