class AddCourseIdToDocumentation < ActiveRecord::Migration[5.2]
  def change
    add_column :documentations, :course_id, :integer
  end
end
