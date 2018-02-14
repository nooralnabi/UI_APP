class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :gender
      t.string :website
      t.integer :person_id
      t.boolean :status, default: true

      t.timestamps
    end
  end
end
