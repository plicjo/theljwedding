class RemoveFieldsFromGuests < ActiveRecord::Migration
  def change
    remove_column :guests, :phone_number
  end
end
