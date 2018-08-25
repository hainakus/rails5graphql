class CreateDocumentations < ActiveRecord::Migration[5.2]
  def change
    create_table :documentations do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
