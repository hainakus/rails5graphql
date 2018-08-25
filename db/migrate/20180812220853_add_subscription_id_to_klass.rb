class AddSubscriptionIdToKlass < ActiveRecord::Migration[5.2]
  def change
    add_column :klasses, :subscription_id, :integer
  end
end
