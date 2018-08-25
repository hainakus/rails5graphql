class AddDocumentationIdToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :documentation_id, :integer
  end
end
