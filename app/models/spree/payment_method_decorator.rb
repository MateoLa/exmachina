module Spree::PaymentMethodDecorator

  def create_profile(payment)
    byebug
    super
  end
  
end
  
Spree::PaymentMethod.prepend(Spree::PaymentMethodDecorator)