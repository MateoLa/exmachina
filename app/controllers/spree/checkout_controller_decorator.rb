module Spree::CheckoutControllerDecorator

  def update
    byebug if params[:state] == 'payment'
    byebug if params[:state] == 'confirm'
    byebug if params[:state] == 'complete'
    super
  end
end
  
Spree::CheckoutController.prepend(Spree::CheckoutControllerDecorator)