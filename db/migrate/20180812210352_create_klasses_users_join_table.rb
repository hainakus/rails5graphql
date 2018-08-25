class CreateKlassesUsersJoinTable < ActiveRecord::Migration[5.2]
  def change

    # If you want to add an index for faster querying through this join:
    create_join_table :klasses, :users do |t|
      t.index :klass_id
      t.index :user_id
    end
  end
end
