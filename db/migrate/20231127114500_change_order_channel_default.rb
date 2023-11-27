class ChangeOrderChannelDefault < ActiveRecord::Migration[4.2]
  def up
    change_column_default :spree_orders, :channel, 'Exmachina Mkt'
  end
  
  def down
    change_column_default :spree_orders, :channel, 'spree'
  end
end