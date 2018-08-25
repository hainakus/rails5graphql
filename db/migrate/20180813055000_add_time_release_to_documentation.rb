class AddTimeReleaseToDocumentation < ActiveRecord::Migration[5.2]
  def change
    add_column :documentations, :time_release, :datetime
  end
end
