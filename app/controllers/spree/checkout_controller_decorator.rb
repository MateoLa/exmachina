module Spree::CheckoutControllerDecorator
  def update
    # states: ['address', 'delivery', 'payment', 'confirm', 'payment_confirm', 'complete']
    byebug if ['payment', 'confirm', 'complete'].include? params[:state]
    super
  end
end

Spree::CheckoutController.prepend(Spree::CheckoutControllerDecorator)