class AddEnabledToDocumentation < ActiveRecord::Migration[5.2]
  def change
    add_column :documentations, :enabled, :boolean
  end
end
