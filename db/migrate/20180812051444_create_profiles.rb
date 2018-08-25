class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :facebook
      t.string :twitter
      t.integer :mobile
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
