module Spree::PaymentDecorator

  def handle_response(response, success_state, failure_state)
    byebug
    super
  end

#  def build_source
#    byebug
#    super
#  end

end

Spree::Payment.prepend(Spree::PaymentDecorator)
