class CreateRsvpEmails < ActiveRecord::Migration
  def change
    create_table :rsvp_emails do |t|
      t.text :body
      t.string :subject

      t.timestamps null: false
    end
  end
end
