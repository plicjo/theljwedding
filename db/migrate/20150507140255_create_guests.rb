class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :email
      t.string :phone_number
      t.boolean :rsvp_status, default: false

      t.timestamps null: false
    end
  end
end
