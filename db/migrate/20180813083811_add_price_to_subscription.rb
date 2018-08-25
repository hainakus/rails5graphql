class AddPriceToSubscription < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :price, :decimal
  end
end
