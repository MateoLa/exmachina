module Spree::Payment::ProcessingDecorator

  # Actions are purchase or authorize.
  def gateway_action(source, action, success_state)
    byebug
    super
  end
end
  
Spree::Payment::Processing.prepend(Spree::Payment::ProcessingDecorator)
