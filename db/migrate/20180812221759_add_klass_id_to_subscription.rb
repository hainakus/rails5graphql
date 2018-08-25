class AddKlassIdToSubscription < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :klass_id, :integer
  end
end
