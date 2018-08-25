class AddKlassIdToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :klass_id, :integer
  end
end
