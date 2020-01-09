class RemovePhotosFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :photo_id
  end
end
