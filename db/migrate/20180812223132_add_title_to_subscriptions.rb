class AddTitleToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :title, :string
  end
end
