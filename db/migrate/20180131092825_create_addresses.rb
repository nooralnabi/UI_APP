class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :state
      t.string :zip
      t.integer :person_id

      t.timestamps
    end
  end
end
