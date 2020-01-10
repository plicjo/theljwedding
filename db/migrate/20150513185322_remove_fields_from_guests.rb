class RemoveFieldsFromGuests < ActiveRecord::Migration[6.0]
  def change
    remove_column :guests, :phone_number
  end
end
