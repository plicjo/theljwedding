class AddInviteStatusToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :invite_status, :boolean
  end
end
