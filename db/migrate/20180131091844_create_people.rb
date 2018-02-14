class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.datetime :date_of_brith

      t.timestamps
    end
    add_index :people, :name
  end
end
