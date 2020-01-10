class AddInviteStatusToAdditionalGuests < ActiveRecord::Migration[6.0]
  def change
    add_column :additional_guests, :invite_status, :boolean
  end
end
