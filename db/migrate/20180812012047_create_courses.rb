class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.text :excerpt

      t.timestamps
    end
  end
end
