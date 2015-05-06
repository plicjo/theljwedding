class RemoveWeddings < ActiveRecord::Migration
  def change
    drop_table :weddings
  end
end
