class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :addresses, :state, :country
  end
end
