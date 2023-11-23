module Spree::CheckoutControllerDecorator

  def update
    byebug if ['payment', 'confirm', 'complete'].include? params[:state]
    super
  end
end
  
Spree::CheckoutController.prepend(Spree::CheckoutControllerDecorator)