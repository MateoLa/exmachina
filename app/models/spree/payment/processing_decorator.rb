module Spree::Payment::ProcessingDecorator
   
  def capture!(amount = nil)
    byebug
    super
  end

  # Actions are purchase or authorize.
  def gateway_action(source, action, success_state)
    byebug
    super
  end


end
  
Spree::Payment::Processing.prepend(Spree::Payment::ProcessingDecorator)
