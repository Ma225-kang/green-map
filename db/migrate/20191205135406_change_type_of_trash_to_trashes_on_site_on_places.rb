class ChangeTypeOfTrashToTrashesOnSiteOnPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :type_of_trash
    add_column    :places, :trashes_on_site, :jsonb, default: []
  end
end
