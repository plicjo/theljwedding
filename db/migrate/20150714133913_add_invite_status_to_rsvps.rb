class AddInviteStatusToRsvps < ActiveRecord::Migration[6.0]
  def change
    add_column :rsvps, :invite_status, :boolean
  end
end
