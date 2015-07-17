class AddInviteStatusToAdditionalGuests < ActiveRecord::Migration
  def change
    add_column :additional_guests, :invite_status, :boolean
  end
end
