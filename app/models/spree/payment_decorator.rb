module Spree::PaymentDecorator

  def process!
    # payment_method&.auto_capture?
    byebug
    super
  end

  def capture!(amount = nil)
    byebug
    super
  end

  # Actions are purchase or authorize.
  def gateway_action(source, action, success_state)
    byebug
    super
  end

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
